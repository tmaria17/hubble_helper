class Favorite < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :url
  belongs_to :user
end
