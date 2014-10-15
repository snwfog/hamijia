class HousesController < ApplicationController
  def index
    @houses = House.all
    render json: @houses, status: :ok
  end
end
