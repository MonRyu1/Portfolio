class Admin::LocalsController < ApplicationController
  def index
  	@locals = Local.all
  end

  def show
  end

  def edit
  end

  def update
  end
end
