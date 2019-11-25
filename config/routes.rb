# frozen_string_literal: true

Rails.application.routes.draw do
  get 'teddybears/index'
  get 'teddybears/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/teddybears', to: 'teddybears#index'

  root to: 'teddybears#index'
end
