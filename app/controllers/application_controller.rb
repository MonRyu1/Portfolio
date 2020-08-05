class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  	case resource
  		when Admin
  			admin_path
  		when User
  			root_path
  		when Local
  			root_path
  	end
  end

  def after_sign_up_path_for(resource)
  	case resource
  		when Admin
  			admin_path
  		when User
  			root_path
  		when Local
  			root_path
  	end
  end

	private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :user_name, :user_image_id, :local_image_id, :shop_id, :level, :is_active,])
  end

end
