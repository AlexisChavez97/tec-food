# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :control_number,
                                                       :phone, :password,
                                                       :password_confirmation])
  end

  def buyer_or_seller
    if current_seller != nil
      authenticate_seller!
    else
      authenticate_buyer!
    end
  end
end
