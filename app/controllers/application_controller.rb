class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name << :_name
    devise_parameter_sanitizer.for(:sign_up) << :firts_name << :firts_name
    devise_parameter_sanitizer.for(:sign_up) << :phone << :phone
    devise_parameter_sanitizer.for(:sign_up) << :year << :year

    devise_parameter_sanitizer.for(:account_update) << :name << :_name
    devise_parameter_sanitizer.for(:account_update) << :firts_name << :firts_name
    devise_parameter_sanitizer.for(:account_update) << :phone << :phone
    devise_parameter_sanitizer.for(:account_update) << :year << :year  
  end


end
