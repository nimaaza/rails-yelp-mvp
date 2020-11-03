class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def update
    @restaurant = Restaurant.new(restaurat_params)
    @restaurant.save!

    redirect_to @restaurant
  end

  private

  def restaurat_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
