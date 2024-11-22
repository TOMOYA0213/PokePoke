class MainController < ApplicationController
  # 検索フォームを表示
  def search
    @query = params[:query]
    @cards = Card.where("name LIKE ?", "%#{@query}%")

    # 検索結果ごとのデータ準備
    prepare_data_for_cards(@cards)
  end

  # 検索結果を表示
  def results
    @pokemon_name = params[:pokemon_name]
    @cards = Card.where("name LIKE ?", "%#{@pokemon_name}%")

    # 検索結果ごとのデータ準備
    prepare_data_for_cards(@cards)
  end

  private

  # 指定したカード群の関連データを準備する共通メソッド
  def prepare_data_for_cards(cards)
    @top_related_cards = {}
    @related_packs = {}
    @packs = {}
    @recommended_packs = {}

    cards.each do |card|
      # main_card_id → sub_card_id と sub_card_id → main_card_id の両方で関連ポケモンを取得
      related_main_to_sub = get_top_related_cards(card)
      related_sub_to_main = get_related_from_sub_to_main(card)

      # 両方の関連カードを統合してポイント順に最大3件を取得
      combined_related_cards = (related_main_to_sub + related_sub_to_main).sort_by { |relation| -relation.point }.take(3)
      @top_related_cards[card] = combined_related_cards

      # 関連ポケモンごとの入手可能なパックを準備
      combined_related_cards.each do |relation|
        related_card = relation.main_card_id == card.id ? relation.sub_card : relation.main_card
        @related_packs[related_card] ||= related_card.packs
      end

      # 各カードの入手可能なパック
      @packs[card] = card.packs

      # おすすめのパックを計算
      @recommended_packs[card] = calculate_recommended_pack(combined_related_cards)
    end
  end

  # main_card_id → sub_card_id の関連ポケモンを取得（ポイント順で最大3件）
  def get_top_related_cards(card)
    card.relations.includes(:sub_card).order(point: :desc).limit(3)
  end

  # sub_card_id → main_card_id の関連ポケモンを取得（ポイント順で最大3件）
  def get_related_from_sub_to_main(card)
    Relation.where(sub_card_id: card.id).includes(:main_card).order(point: :desc).limit(3)
  end

  # おすすめのパックを計算
  def calculate_recommended_pack(related)
    pack_scores = {}
    packs_for_related = related.map(&:main_card).flat_map(&:packs).uniq

    packs_for_related.each do |pack|
      pack_scores[pack] = related.sum do |relation|
        relation.point * (relation.main_card.packs.include?(pack) ? 1 : 0)
      end
    end

    pack_scores.max_by { |_, score| score }&.first
  end
end
