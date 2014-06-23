class RestaurantsController < ApplicationController

def new
  @restaurant = Restaurant.new
end


def create
  @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
    flash[:notice] = "Success!"
    redirect_to restaurants_path
  else
    flash.now[:notice] = "Error!"
    render :new
  end
end

def show
  @restaurant = Restaurant.find(params[:id])
end


def index
  @restaurants = Restaurant.order(name: :asc)
end



private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :city, :state, :zip_code, :category, :description)
end

end
