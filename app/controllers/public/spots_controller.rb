class Public::SpotsController < ApplicationController
  def index
  	@areas = Area.all
  	if params[:area_id] != nil
  		@area = Area.find(params[:area_id])
  	else
  		@spots = Spot.all.page(params[:page]).reverse_order
  	end
  end

  def show
  end

  def edit
  end
end
