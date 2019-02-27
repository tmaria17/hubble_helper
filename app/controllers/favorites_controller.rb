class FavoritesController < ApplicationController
  def create
    user = User.first

    if user
       Favorite.create!(user_id: user.id, title: params[:title], url: params[:url])
       redirect_to favorites_path
    end

  end

  def index
    user = User.first
    @favorites = user.favorites.all
  end
end
