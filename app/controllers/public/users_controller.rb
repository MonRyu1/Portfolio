class Public::UsersController < ApplicationController
  def show
    @user = current_user
    @local = current_local
  end

  def edit
  end

  def update
  end

  def confirm
  end

  def leave
  end
end
