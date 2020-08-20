class Admin::ForecastsController < ApplicationController
   before_action :authenticate_admin!

  def index
  	@forecasts = Forecast.all
  end

  def show
  end

  def destroy
  end
end
