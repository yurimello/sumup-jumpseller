# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :transactions, only: [:create]
  root to: ->(_env) { [200, {}, ['It Works']] }
end
