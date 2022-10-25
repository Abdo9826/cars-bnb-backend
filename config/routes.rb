# frozen_string_literal: true

Rails.application.routes.draw do
  get '/get-started', to: 'users#splash'
  devise_for :users

  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users
  resources :clients

  root to: 'users#splash'
end
