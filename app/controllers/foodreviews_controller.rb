class FoodreviewsController < ApplicationController
  def new
    @foodreview = Foodreview.new(restaurant_id: params[:restaurant_id])
  end
end
