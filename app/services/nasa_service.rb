class NasaService
  def get_hubble_images
    get_json("/search?q=hubble&center=GSFC&media_type=image")[:collection][:items]
  end
private
  def conn
    url = "https://images-api.nasa.gov"
    Faraday.new(url: url ) do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
