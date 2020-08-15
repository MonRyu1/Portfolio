class Public::ReportsController < ApplicationController
  def index
    @reports = Report.all.order(created_at: :desc)
  end

  def new
    @report = Report.new
  end

  def show
    @report = Report.find(params[:id])
  end

  def edit
  end

  def create
    @report = Report.new(report_params)
    @report.save
    redirect_to root_path
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
