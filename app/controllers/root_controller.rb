require 'pry'

class RootController < ApplicationController


def index
  @restaurant = Restaurant.order(created_at: :desc)
end

end
