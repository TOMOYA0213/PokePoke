class Card < ApplicationRecord
    has_many :relations, foreign_key: :main_card_id
    has_many :related_cards, through: :relations, source: :sub_card_id
    has_many :includes
    has_many :packs, through: :includes
  end