# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'cars/index'
  # get 'cars/show'
  # get 'cars/new'
  # get 'cars/create'
  # get 'cars/edit'
  # get 'cars/destroy'
  devise_for :users,
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }  
  resource :cars
end
