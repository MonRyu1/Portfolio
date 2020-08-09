class Public::ForecastsController < ApplicationController
  def index
    @forecasts = Forecast.all.order(created_at: :desc)
    #OpenWeatherMapAPI
      params = URI.encode_www_form({q: "tokyo"})
      uri = URI.parse("http://api.openweathermap.org/data/2.5/weather?#{params}&units=metric&appid=d731bd5a1e17c0c772485f00cbf92579")
      response = Net::HTTP.get_response(uri)
      result = JSON.parse(response.body)
      if result["main"]
        @name = result["name"]
        @temp_max = result["main"]["temp_max"]
        @temp_min = result["main"]["temp_min"]
        @wind = result["wind"]["speed"]
        @wind_deg = result["wind"]["deg"]
        @sunrise = result["sys"]["sunrise"]
        @sunset = result["sys"]["sunset"]
        @timezone = result["timezone"]
      end
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
