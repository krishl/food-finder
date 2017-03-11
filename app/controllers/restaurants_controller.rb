class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.foods.build.restaurant_foods.build
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if params[:add_menu_item]
      @restaurant.foods.build.restaurant_foods.build
    elsif params[:remove_menu_item]
    else
      if @restaurant.save
        redirect_to restaurant_path(@restaurant) and return
      end
    end
    render :new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant.destroy
    redirect_to :index
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:id, :name, :address, :borough, :phone, :cuisine, foods_attributes: [:id, :name, :price, "_destroy", restaurant_foods_attributes: [:restaurant_id, :food_id, :item_type]])
  end
end
