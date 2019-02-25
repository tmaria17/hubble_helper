require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:password_digest)}
  end
  describe 'relationships' do
    it {should have_many(:favorites)}
  end
end
