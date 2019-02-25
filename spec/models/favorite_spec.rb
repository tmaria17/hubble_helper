require 'rails_helper'
RSpec.describe Favorite do
  describe 'validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:url)}
  end
  describe 'relationships' do
    it {should belong_to(:user)}
  end
end
