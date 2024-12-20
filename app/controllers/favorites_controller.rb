class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    # お気に入り追加処理
    current_user.favorites.create(card_id: params[:card_id])

    # リダイレクト先を決定
    if params[:pokemon_name].present?
      # pokemon_nameがある場合は結果ページへ戻る
      redirect_to results_path(pokemon_name: params[:pokemon_name])
    else
      # なければデフォルトで検索ページなど
      redirect_to root_path
    end
  end

  def destroy
    favorite = current_user.favorites.find(params[:id])
    favorite.destroy

    if params[:pokemon_name].present?
      redirect_to results_path(pokemon_name: params[:pokemon_name])
    else
      redirect_to favorites_path
    end
  end
end
