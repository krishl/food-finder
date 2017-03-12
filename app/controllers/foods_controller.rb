class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to food_path(@food), notice: "Menu item successfully created."
    else
      render :new
    end
  end

  def show

  end

  def edit
    
  end

  def update
    if @food.update_attributes(food_params)
      redirect_to food_path(@food), notice: "Menu item successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @food.delete
    redirect_to :index
  end

  private

  def food_params
    params.require(:food).permit(:name, :price)
  end

  def set_food
    @food = Food.find_by(id: params[:id])
  end
end
