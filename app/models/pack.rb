class Pack < ApplicationRecord
    has_many :includes
    has_many :cards, through: :includes
  end
  