class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def confirm
  end

  def leave
  end

  private
  def user_params
    params.require(:user).permit(:last_name, :first_name, :user_image, :level, :user_name)
  end
end
