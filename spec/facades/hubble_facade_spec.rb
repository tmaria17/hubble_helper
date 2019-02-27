require 'rails_helper'

describe 'Hubble Facade' do
  it 'returns an array of photos' do
    VCR.use_cassette("hubble_facade") do

      hubble_facade = HubbleFacade.new

      expect(hubble_facade.get_images.class).to eq(Array)
      expect(hubble_facade.get_images[0]).to be_a(Photo)
      expect(hubble_facade.get_images.first.title).to be_a(String)
      expect(hubble_facade.get_images.first.url).to be_a(String)
    end
  end
end
