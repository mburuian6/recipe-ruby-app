require 'action_text'

class ApplicationController < ActionController::Base
  # helper ActionText::Engine.helpers

  skip_before_action :verify_authenticity_token
  before_action :allow_iframe, only: [:index,:show,:new,:create,:edit,:update,:destroy]

  before_action :authenticate_user!

  # protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :user_name, :name, :password])
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :user_name, :name, :password, :current_password])
    end
    
    def allow_iframe
      response.headers.delete "X-Frame-Options"
    end

end
