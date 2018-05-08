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
  resource :buyers
  root 'static_pages#home'

  get 'buyers/menu', to: 'menu#index'
end
