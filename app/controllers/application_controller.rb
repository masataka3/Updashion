class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    case resource
    when AdminUser
      admin_root_path
    when User
      user_path(resource)
  end
  end

  def after_sign_out_path_for(resource)
    case resource
    when AdminUser
      new_admin_session_path
    when User
      root_path
    else
      root_path
    end
  end

  protected

  def configure_permitted_parameters
    added_attrs = [:email, :name, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
