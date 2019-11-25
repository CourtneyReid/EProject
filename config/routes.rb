# frozen_string_literal: true

Rails.application.routes.draw do
  get 'colours/index'
  get 'colours/show'
  get 'teddybears/index'
  get 'teddybears/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/teddybears', to: 'teddybears#index'
  get '/teddybears/:id', to: 'teddybears#show', id: /\d+/
  get '/colours', to: 'colours#index'
  get '/colours/:id', to: 'colours#show', id: /\d+/

  root to: 'teddybears#index'
end
