class FavoritesController < ApplicationController
    before_action :authenticate_user!
  
    def create
      card = Card.find(params[:card_id])
      current_user.favorites.create(card: card)
      redirect_to request.referer, notice: "#{card.name}をお気に入りに追加しました。"
    end
  
    def destroy
      favorite = current_user.favorites.find(params[:id])
      favorite.destroy
      redirect_to request.referer, notice: "お気に入りを解除しました。"
    end
  end
  