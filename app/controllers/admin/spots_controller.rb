class Admin::SpotsController < ApplicationController
   before_action :authenticate_admin!

  def index
    @spot = Spot.new
    @spots = Spot.all
  end

  def new
  end

  def show
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.save
    redirect_to admin_spots_path
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update(spot_params)
    redirect_to admin_spots_path
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to admin_spots_path
  end

  private
  def spot_params
    params.require(:spot).permit(:area_id, :name, :spot_image, :address, :feature, :parking)
  end
end
