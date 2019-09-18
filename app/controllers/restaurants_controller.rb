class RestaurantsController < ApplicationController
  before_action :set_resturant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(strong_params)
    redirect_to restaurants_path
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
  end

  private

  def strong_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_resturant
    @restaurant = Restaurant.find(params[:id])
  end
end
