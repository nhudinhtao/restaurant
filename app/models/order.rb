class Order < ApplicationRecord
  belongs_to :food_item

  validates_presence_of :food_item_id
  validates_presence_of :name
  validates_presence_of :quantity
  validates_presence_of :phone
  validates_presence_of :email
  validates_presence_of :address

end
