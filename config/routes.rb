# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :buyers
  root 'static_pages#home'
end
