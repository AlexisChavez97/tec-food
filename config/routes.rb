# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :sellers, path: 'sellers', controllers: {
    sessions:           'sellers/sessions',
    passwords:          'sellers/passwords',
    registrations:      'sellers/registrations',
    confirmations:      'sellers/confirmations',
  }
  devise_for :buyers, path: 'buyers', controllers: {
    sessions:           'buyers/sessions',
    passwords:          'buyers/passwords',
    registrations:      'buyers/registrations',
    confirmations:      'buyers/confirmations',
  }

  authenticated :buyer do
    root to: 'menu#index'
  end

  authenticated :seller do
    root to: 'sellers_dashboard#home'
  end

  resources :products
  resource :buyers

  root 'static_pages#home'

  get 'sellers/dashboard', to: 'sellers_dashboard#home'
  get 'buyers/menu', to: 'menu#index'
end
