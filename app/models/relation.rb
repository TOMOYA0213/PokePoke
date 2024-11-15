class Relation < ApplicationRecord
    belongs_to :main_card, class_name: "Card", foreign_key: :main_card_id
    belongs_to :sub_card, class_name: "Card", foreign_key: :sub_card_id
  end
  