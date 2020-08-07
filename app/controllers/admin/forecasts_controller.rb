class Admin::ForecastsController < ApplicationController
  def index
  	@forecasts = Forecast.all
  end

  def show
  end

  def destroy
  end
end
