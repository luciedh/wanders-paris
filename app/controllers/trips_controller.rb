class TripsController < ApplicationController
  def search_trip
    @categories = Category.all
  end

  def index
    @trips = Trip.all
  end
end
