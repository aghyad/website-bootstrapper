class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?





  protected
    def configure_permitted_parameters
      #Rails.logger.debug devise_parameter_sanitizer.for(:sign_up).inspect
      #devise_parameter_sanitizer.for(:sign_up).merge! :first_name => params[:first_name]
      #devise_parameter_sanitizer.for(:sign_up) << :first_name
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:first_name, :last_name, :email, :password, :password_confirmation)
      end
    end
end
