class FoodItem < ApplicationRecord
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      where(:all)
    end
  end
end
