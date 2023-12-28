# frozen_string_literal: true

Rails.application.routes.draw do
  root 'panel#index'
  get '/main', to: 'main#index' , as: 'welcome'
  devise_for :users, controllers: { registrations: 'users/registrations' }


  devise_scope :user do
    put "/users/:id/update_approval" => "users/registrations#update_approval", as: :update_approval
    put "/users/:id/update_disapproval" => "users/registrations#update_disapproval", as: :update_disapproval

  end

  namespace :users do
    resource :registrations, only: [:edit, :update] do
      member do
        put :update_approval
        put :update_disapproval
      end
    end
  end

  resources :books

  get '/books' , to: 'books#index', as: 'list'
  get '/books/:id' , to: 'books#show'
  get '/books/new', to: 'books#new', as: 'newbook'
end

