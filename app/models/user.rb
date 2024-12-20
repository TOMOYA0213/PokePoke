class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_cards, through: :favorites, source: :card
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end