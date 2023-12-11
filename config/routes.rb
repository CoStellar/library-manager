# frozen_string_literal: true

Rails.application.routes.draw do
  root 'main#index'

  get '/main', to: 'main#index'
end
