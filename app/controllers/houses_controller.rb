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

  def show
    @house = House.find_by(id: params[:id])
    render :show
  end

  def update
    @house = House.find_by(id: params[:id])
    @house.update(
      address: params[:address] || @house.address,
      square_ft: params[:square_ft] || @house.square_ft,
      bedrooms: params[:bedrooms] || @house.bedrooms,
      bathrooms: params[:bathrooms] || @house.bathrooms,
    )
    render :show
  end
end
