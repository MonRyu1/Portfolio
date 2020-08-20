# frozen_string_literal: true

class Locals::SessionsController < Devise::SessionsController

  before_action :reject_local, only: [:create]

  protected

  def reject_local
    @local = Local.find_by(email: params[:local][:email].downcase)
    if @local
      if (@local.valid_password?(params[:local][:password]) && (@local.active_for_authentication? == false))
        flash[:error] = "退会済みです"
        redirect_to new_local_session_path
      end
    else
      flash[:error] = "必須項目を入力してください。"
    end
  end

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
