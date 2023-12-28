# frozen_string_literal: true

Rails.application.routes.draw do
  root 'main#index'

  get '/main', to: 'main#index' , as: 'welcome'

  resources :books

  get '/books' , to: 'books#index', as: 'list'
  get '/books/:id' , to: 'books#show'
  get '/books/new', to: 'books#new', as: 'newbook'
  get '/search' , to: 'books#search'
end
