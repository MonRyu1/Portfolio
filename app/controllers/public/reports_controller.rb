class Public::ReportsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @areas = Area.all
    if params[:area_id] != nil
      @area = Area.find(params[:area_id])
    else
      @reports = Report.all.order(created_at: :desc)
    end
  end

  def new
    @report = Report.new
    if city_name = params[:city_name]
      params = URI.encode_www_form({q: city_name})
      uri = URI.parse("http://api.openweathermap.org/data/2.5/weather?#{params}&units=metric&lang=ja&appid=d731bd5a1e17c0c772485f00cbf92579")
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
  end

  def show
    @report = Report.find(params[:id])
  end

  def edit
  end

  def create
    @report = Report.new(report_params)
    @report.save
    redirect_to reports_path
  end

  def update
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to admin_reports_path
  end

  private
  def report_params
    params.require(:report).permit(:user_id, :spot_id, :rate, :size, :report_image, :review, :board, :time, :wind, :temperature, :water_temperature)
  end
end
