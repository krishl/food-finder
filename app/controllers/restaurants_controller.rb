class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    5.times { @restaurant.foods.build.restaurant_foods.build }
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: "Restaurant successfully created."
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_path(@restaurant), notice: "Restaraunt successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @restaurant.delete
    redirect_to :index
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :borough, :phone, :cuisine, foods_attributes: [:id, :name, :price])
  end

  def set_restaurant
    @restaurant = Restaurant.find_by(id: params[:id])
  end
end
