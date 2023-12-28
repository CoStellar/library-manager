# frozen_string_literal: true

class ApplicationController < ActionController::Base
    def configure_permitted_parameters
        attributes = [:first_name, :last_name ,:username, :email, :role]
        devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
        devise_parameter_sanitizer.permit(:account_update, keys: attributes)
      end
end
