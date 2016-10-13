class HomeController < ApplicationController
  @orderby = 0
  def index
    section = params[:section]
    @orderby = params[:orderby]
    search = params[:query]
    if section
        @foodItems = FoodItem.where(section: section)
    else
        @foodItems = FoodItem.all
    end

    if search
      @foodItems = @foodItems.where('name ILIKE ? or description ILIKE ? ', "%#{search}%", "%#{search}%")
    end

    case @orderby.to_i 
      when 0
        @foodItems = @foodItems.order('name asc')
      when 1
        @foodItems = @foodItems.order('price asc')
      when 2
        @foodItems = @foodItems.order('price desc')
      end
  end

end
