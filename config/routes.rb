# frozen_string_literal: true

Rails.application.routes.draw do
  get 'borrowings/new'
  get 'borrowings/create'
  get 'borrowings/show'
  get 'borrowings/edit'
  get 'borrowings/update'
  get 'borrowings/destroy'
  root 'main#index'
  
  get 'panel', to: 'panel#index' , as: 'panel'

  devise_for :users, controllers: { registrations: 'users/registrations' }


  devise_scope :user do
    put "/users/:id/update_approval" => "users/registrations#update_approval", as: :update_approval
    put "/users/:id/update_disapproval" => "users/registrations#update_disapproval", as: :update_disapproval

  end

  resources :borrowings do
    member do
      put 'return_book' 
      patch 'extend_due_date'
      patch 'update'
    end
  end
  
  namespace :users do
    resource :registrations, only: [:edit, :update] do
      member do
        put :update_approval
        put :update_disapproval
      end
    end
  end

  resources :books do
    resources :copies
    member do
      get 'copy_params'
    end
  end
  resources :books do
    resources :copies do
      resources :borrowings
    end
  end


  put '/return_book/:id', to: 'borrowings#return', as: :return_book
  get '/books' , to: 'books#index', as: 'list'
  get '/books/:id' , to: 'books#show', as: 'show'
  get '/books/new', to: 'books#new', as: 'newbook'
  get '/search' , to: 'books#search'
  get '/borrow' , to: 'borrowings#borrow', as: 'borrow'
  post '/borrow', to: 'borrowings#create', as: 'create_borrowing'
  get '/return' , to: 'borrowings#return', as: 'return'
  get '/update' , to: 'borrowings#update', as: 'update'




end

