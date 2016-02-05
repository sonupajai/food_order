class HomesController < ApplicationController
autocomplete :city, :name

  def index
  	@city=City.all  	
  end

  def show
  	@areas = City.find(params[:city_id]).areas
  end 

  def hotel_list
  @hotels = Area.find(params[:area_id]).hotels
  end
end
