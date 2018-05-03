# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :buyers
  resource :buyers
  root 'static_pages#home'

  get 'buyers/menu', to: 'menu#index'
end
