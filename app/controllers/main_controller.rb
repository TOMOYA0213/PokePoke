class MainController < ApplicationController
  # 検索フォームを表示
  def search
    # 特に処理は不要
  end

  # 検索結果を表示
  def results
    @pokemon_name = params[:pokemon_name]
    
    # ポケモン名でカードを検索
    @cards = Card.where("name LIKE ?", "%#{@pokemon_name}%")

    # それぞれのカードに関連するポケモンを、ポイント順に取得（TOP3）
    @top_related_cards = {}
    @related_packs = {}  # 追加：関連カードの入手パック

    @cards.each do |card|
      # このポケモンに関連するカードをポイント順に並べる
      related_cards = card.relations.includes(:sub_card).order(point: :desc).limit(3)
      @top_related_cards[card] = related_cards

      # 関連ポケモンごとに、そのポケモンが含まれているパックを取得
      @related_packs[card] = related_cards.map do |relation|
        relation.sub_card.packs
      end
    end

    # 各ポケモンが含まれているパック情報も取得
    @packs = {}
    @cards.each do |card|
      @packs[card] = card.packs
    end
  end
end
