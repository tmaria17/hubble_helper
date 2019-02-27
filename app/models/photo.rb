class Photo
  attr_reader :title,
              :url
  def initialize(image_data)
    @title = image_data[:data][0][:title]
    @url = image_data[:links][0][:href]
  end

end
