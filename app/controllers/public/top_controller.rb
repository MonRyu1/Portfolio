class Public::TopController < ApplicationController
  def top
  	@reports = Report.all.order(created_at: :desc)
  	@forecasts = Forecast.all.order(created_at: :desc)
  end
end
