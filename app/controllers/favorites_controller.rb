class FavoritesController < ApplicationController
  def create
    user = User.first

    if user
       Favorite.create!(user_id: user.id, title: params[:title], url: params[:url])
       redirect_to photos_path
       flash[:success] = "You added #{Favorite.last.title} to your favorites!"
    end

  end

  def index
    user = User.first
    @favorites = user.favorites.distinct
  end
end
