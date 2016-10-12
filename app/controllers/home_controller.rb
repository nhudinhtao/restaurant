class HomeController < ApplicationController
  def index
    if params[:section] 
      puts params[:section]
      @foodItems = FoodItem.where(section: params[:section])
    else
        @foodItems = FoodItem.all
    end
  end
end
