class Public::ShopsController < ApplicationController
  def index
  	@areas = Area.all
  	@shops = Shop.all
  	if params[:area_id] != nil
  	@area = Area.find(params[:area_id])
  else
  end
  end

  def show
  end

  def edit
  end
end
