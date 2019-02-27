class FavoritesController < ApplicationController
  def create
    favorite = Favorite.create(user_id: 1, title: params[:title], url: params[:url])

  end
end
