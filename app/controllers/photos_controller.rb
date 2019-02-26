class PhotosController < ApplicationController
  def index
    photo_data = NasaService.new.get_hubble_images
    @photos = photo_data.map do |photo|
               photo[:links][0][:href]

              end
  end
end
