class Public::TopController < ApplicationController
  def top
  	@reports = Report.all
  	@forecasts = Forecast.all
  end
end
