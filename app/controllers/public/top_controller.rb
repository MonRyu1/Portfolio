class Public::TopController < ApplicationController
  def top
  	@reports = Report.all
  end
end
