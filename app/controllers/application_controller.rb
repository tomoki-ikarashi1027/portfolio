class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?




  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
    def after_sign_out_path_for(resource)
    if resource == :admins
    new_admins_session_path
    else
      new_customer_session_path
    end
  end

end
