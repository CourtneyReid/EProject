# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'orders/index'
  get 'orders/show'
  get 'sizes/index'
  get 'sizes/show'
  get 'colours/index'
  get 'colours/show'
  get 'teddybears/index'
  get 'teddybears/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/teddybears', to: 'teddybears#index'
  get '/teddybears/:id', to: 'teddybears#show', id: /\d+/
  get '/colours', to: 'colours#index'
  get '/colours/:id', to: 'colours#show', id: /\d+/
  get '/sizes', to: 'sizes#index'
  get '/sizes/:id', to: 'sizes#show', id: /\d+/
  get '/orders', to: 'orders#index'
  get '/orders/:id', to: 'orders#show', id: /\d+/

  root to: 'teddybears#index'
end
