class HousesController < ApplicationController
  def index
    @houses = House.all
    render :index
  end

  def create #use House.new and make happy/sad paths
    @house = House.create(
      address: params[:address],
      square_ft: params[:square_ft],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
    )
    render :show
  end
end
