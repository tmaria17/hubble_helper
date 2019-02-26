require 'rails_helper'

describe 'NASA Service'do
  it' exists' do
    VCR.use_cassette("nasa_service") do
      
      service = NasaService.new

      expect(service).to be_a(NasaService)
    end
  end
  it 'returns hubble images' do
    VCR.use_cassette("nasa_service") do

      service = NasaService.new

      expect(service.get_hubble_images.class).to eq(Array)
      expect(service.get_hubble_images[0][:data][0]).to have_key(:title)
      expect(service.get_hubble_images[0][:links][0]).to have_key(:href)
    end
  end
end
