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
      # 関連ポケモンの取得
      related = get_top_related_cards(card)
      @top_related_cards[card] = related

      # 関連ポケモンごとの入手可能なパックを準備
      @related_packs[card] = {}
      related.each do |relation|
        @related_packs[card][relation.sub_card] = relation.sub_card.packs
      end

      # 各カードの入手可能なパック
      @packs[card] = card.packs

      # おすすめのパックを計算
      @recommended_packs[card] = calculate_recommended_pack(related)
    end
  end

  # 関連ポケモンをポイント順で取得（最大3件）
  def get_top_related_cards(card)
    card.relations.includes(:sub_card).order(point: :desc).limit(3)
  end

  # おすすめのパックを計算
  def calculate_recommended_pack(related)
    pack_scores = {}
    packs_for_related = related.map(&:sub_card).flat_map(&:packs).uniq

    packs_for_related.each do |pack|
      pack_scores[pack] = related.sum do |relation|
        relation.point * (relation.sub_card.packs.include?(pack) ? 1 : 0)
      end
    end

    pack_scores.max_by { |_, score| score }&.first
  end
end
