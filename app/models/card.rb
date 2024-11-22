class Card < ApplicationRecord
    has_many :relations, foreign_key: :main_card_id
    has_many :related_cards, through: :relations, source: :sub_card_id


    # sub_card_id → main_card_id の関連
    has_many :sub_relations, foreign_key: :sub_card_id, class_name: 'Relation'
    has_many :main_cards, through: :sub_relations, source: :main_card


    has_many :includes
    has_many :packs, through: :includes
  end