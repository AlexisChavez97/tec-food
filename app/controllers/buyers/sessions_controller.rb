# frozen_string_literal: true

class Buyers::SessionsController < Devise::SessionsController
  include Accessible
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

  protected

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || buyers_menu_path
  end
end
