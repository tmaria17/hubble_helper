require 'rails_helper'

describe 'Photo Class' do
  before(:all) do
    @photo_data = {:href=>
      "https://images-assets.nasa.gov/image/hubble-eyes-galactic-refurbishment_17322896925_o/coll
    ection.json",
     :data=>
      [{:title=>"Dog Loves Space",
        :date_created=>"2015-04-30T00:00:00Z",
        :media_type=>"image",
        :description=> "blah blah blah",
        :keywords=>["Hubble", "galaxy", "UGC 5797."],
        :nasa_id=>"hubble-eyes-galactic-refurbishment_17322896925_o",
        :center=>"GSFC"}],
        :links=>
      [{:render=>"image",
        :href=> "dogs.com/image",
        :rel=>"preview"}]}
      @photo = Photo.new(@photo_data)
      end
  it 'exists' do
    expect(@photo).to be_a(Photo)
  end
  it 'has title attribute' do
    expect(@photo.title).to eq("Dog Loves Space")
  end
  it 'has url attribute' do
    expect(@photo.url).to eq("dogs.com/image")
  end
end
