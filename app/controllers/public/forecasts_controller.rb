class Public::ForecastsController < ApplicationController
  def index
    @forecasts = Forecast.all.order(created_at: :desc)
  end

  def new
    @forecast = Forecast.new
    @tomorrow = Date.tomorrow.to_s
  end

  def show
  end

  def edit
  end

  def create
    @forecast = Forecast.new(forecast_params)
    @forecast.save
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private
  def forecast_params
    params.require(:forecast).permit(:local_id, :spot_id, :rate, :size, :date, :review, :sunrise, :sunset, :wind, :temperature, :water_temperature)
  end
end
