require 'pry'
class ReviewsController < ApplicationController

def new
  @review = Review.new
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def create
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new(review_params)
  @review.restaurant_id = @restaurant.id
    if @review.save
    flash[:notice] = "Success!"
    redirect_to restaurants_path
  else
    flash.now[:notice] = "Error!"
    render :new
  end
end


private

def review_params
  params.require(:review).permit(:rating, :body, :restaurant_id)
end

end
