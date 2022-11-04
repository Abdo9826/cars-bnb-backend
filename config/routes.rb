# frozen_string_literal: true

Rails.application.routes.draw do
  get 'current_user/index'
  devise_for :users,
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :reservations
  resources :cars
  get '/current_user', to: 'current_user#index'
end
