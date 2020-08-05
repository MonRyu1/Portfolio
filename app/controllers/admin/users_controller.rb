class Admin::UsersController < ApplicationController
  def index
  	@users = User.all
  	@locals = Local.all
  end

  def show
  end

  def edit
  end

  def update
  end
end
