class Admin::LocalsController < ApplicationController
   before_action :authenticate_admin!

  def index
  	@locals = Local.all
  end

  def show
  end

  def edit
  	@local = Local.find(params[:id])
  end

  def update
  	@local = Local.find(params[:id])
    @local.update(local_params)
    redirect_to admin_locals_path
  end

  private
  def local_params
    params.require(:local).permit(:is_active)
  end
end
