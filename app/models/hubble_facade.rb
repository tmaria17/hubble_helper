class HubbleFacade
  def images
    image_data.map do |image_data_obj|
      Photo.new(image_data_obj)
    end
  end
  
  def image_data
    service.get_hubble_images
  end
private

  def service
    NasaService.new
  end

end
