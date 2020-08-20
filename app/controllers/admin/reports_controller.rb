class Admin::ReportsController < ApplicationController
   before_action :authenticate_admin!

  def index
  	@reports = Report.all
  end

  def show
  end

  def destroy
  end
end
