require 'rails_helper'

describe 'Hubble Facade' do
  it 'returns an array of photos' do
    hubble_facade = HubbleFacade.new

    expect(hubble_facade.images.class).to eq(Array)
    expect(hubble_facade.images[0]).to be_a(Photo)
    expect(hubble_facade.images.first.title).to be_a(String)
    expect(hubble_facade.images.first.url).to be_a(String)
  end
end
