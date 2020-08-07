class Public::AreasController < ApplicationController
  def index
  	@areas = Area.all
  end

  def show
  end
end
