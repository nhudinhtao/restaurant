class FoodItem < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :price
  validates_presence_of :description
  validates_presence_of :section
  validates_presence_of :image_url
  validates_length_of :description, :maximum => 320
end
