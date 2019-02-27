class PhotosController < ApplicationController
  def index
    hubble_facade = HubbleFacade.new
    @photos = hubble_facade.get_images
  end
end
