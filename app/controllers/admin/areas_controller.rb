class Admin::AreasController < ApplicationController
  def index
  	@area = Area.new
  	@areas = Area.all
  end

  def new
  end

  def create
  	@area = Area.new(area_params)
  	@area.save
  	redirect_to admin_areas_path
  end

  def destroy
  end

  private
  def area_params
  	params.require(:area).permit(:name)
  end
end
