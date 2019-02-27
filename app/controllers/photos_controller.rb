class PhotosController < ApplicationController
  def index
    user = User.first
    @favorites = user.favorites
    hubble_facade = HubbleFacade.new
    @photos = hubble_facade.get_images
  end
end
