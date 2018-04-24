# frozen_string_literal: true

class BuyersController < ApplicationController

  def create; end

  def edit; end

  def update; end

  def destroy; end

  private

  def buyer_params
    params.require(:buyer).permit(:name, :email, :control_number, :phone,
                                  :password, :password_confirmation)
  end
end
