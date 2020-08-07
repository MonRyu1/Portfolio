class Public::LocalsController < ApplicationController
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
  end

  def leave
  end

  private
  def local_params
    params.require(:local).permit(:last_name, :first_name, :local_image, :user_name, :level, :shop_id)
  end
end
