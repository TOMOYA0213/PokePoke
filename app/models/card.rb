class Card < ApplicationRecord
    has_many :relations, foreign_key: :main_card_id
    has_many :related_cards, through: :relations, source: :sub_card_id


    # sub_card_id → main_card_id の関連
    has_many :sub_relations, foreign_key: :sub_card_id, class_name: 'Relation'
    has_many :main_cards, through: :sub_relations, source: :main_card


    has_many :includes
    has_many :packs, through: :includes

    has_many :favorites, dependent: :destroy
    has_many :favorited_by_users, through: :favorites, source: :user

  require 'http'
  def front_default_image
    # ポケモン名を英語に変換する (日本語名でAPIが動作しない場合のため)
    translated_name = translate_to_english(name)

    # APIリクエスト
    response = HTTP.get("https://pokeapi.co/api/v2/pokemon/#{translated_name.downcase}")

    # JSONレスポンスを解析して画像URLを取得
    if response.status.success?
      json = JSON.parse(response.body.to_s)
      json.dig('sprites', 'front_default')
    else
      nil
    end
  end

  private

  # 日本語名を英語名に変換する (例: カスミ -> Misty)
  def translate_to_english(japanese_name)
    translations = {
      'ピカチュウ' => 'pikachu',
      'サンダー' => 'zapdos',
      'ライチュウ' => 'raichu',
      'ナツメ' => 'sabrina',
      'サーナイト' => 'gardevoir',
      'ミュウツー' => 'mewtwo',
      '博士の研究' => 'professor-research',
      'ゼブライカ' => 'zebstrika',
      'スターミー' => 'starmie',
      'フリーザー' => 'articuno',
      'カスミ' => 'misty'
    }
    
    translations[japanese_name] || japanese_name
  end
end
