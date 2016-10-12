class HomeController < ApplicationController
  def index
    @foodItems = FoodItem.all
  end

  def contact_us
  end
end
