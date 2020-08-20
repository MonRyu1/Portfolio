class Public::LocalsController < ApplicationController
   before_action :authenticate_local!

  def show
    @local = Local.find(params[:id])
  end

  def edit
    @local = Local.find(params[:id])
  end

  def update
    @local = Local.find(params[:id])
    @local.update(local_params)
    redirect_to local_path(@local)
  end

  def confirm
    @local = current_local
  end

  def leave
    @local = Local.find(params[:id])
    @local.update(is_active: false)
    reset_session
    redirect_to root_path
  end

  private
  def local_params
    params.require(:local).permit(:last_name, :first_name, :local_image, :user_name, :level, :shop_id, :is_active)
  end
end
