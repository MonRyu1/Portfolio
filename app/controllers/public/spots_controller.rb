class Public::SpotsController < ApplicationController
  def index
  	@areas = Area.all
  	@area = Area.find(params[:area_id])
  end

  def show
  end

  def edit
  end
end
