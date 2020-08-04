class Admin::SpotsController < ApplicationController
  def index
    @spot = Spot.new
    @spots = Spot.all
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.save
    redirect_to admin_spots_path
  end

  def update
  end

  def destroy
  end

  private
  def spot_params
    params.require(:spot).permit(:area_id, :name, :spot_image, :address, :feature, :parking)
  end
end
