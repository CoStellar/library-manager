# frozen_string_literal: true

Rails.application.routes.draw do

  root 'main#index'
  
  get 'panel', to: 'panel#index' , as: 'panel'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users

  devise_scope :user do
    put "/users/:id/update_approval" => "users/registrations#update_approval", as: :update_approval
    put "/users/:id/update_disapproval" => "users/registrations#update_disapproval", as: :update_disapproval
  end
  resources :borrowings, only: [:create, :destroy, :return_book, :update, :borrow]
  resources :borrowings do
    member do
      put 'return_book'

      patch 'extend_due_date'
      patch 'update'
    end
  end
  namespace :admin do
    resources :users, only: [:index, :edit, :update]
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
    resources :reviews, only: [:create, :destroy, :user_rating]
  end

  delete '/reviews/:id', to: 'reviews#destroy', as: 'cancel_review'
  delete '/borrowings/:id', to: 'borrowings#destroy', as: 'cancel_borrowing'

  put '/return_book/:id', to: 'borrowings#return', as: :return_book
  get '/books' , to: 'books#index', as: 'list'
  get '/books/:id' , to: 'books#show', as: 'show'
  get '/books/new', to: 'books#new', as: 'newbook'
  get '/search' , to: 'books#search'
  get '/borrow' , to: 'borrowings#borrow', as: 'borrow'
  post '/borrow', to: 'borrowings#create', as: 'create_borrowing'
  get '/return' , to: 'borrowings#return', as: 'return'
  resources :reservations, only: [:index, :create, :destroy]
  get '/user_reservations', to: 'reservations#user_reservations', as: 'user_reservations'
  post '/books/:book_id/reserve', to: 'reservations#create', as: 'reserve_book'
  delete '/reservations/:id', to: 'reservations#destroy', as: 'cancel_reservation'
  get '/user_borrowing', to: 'panel#user_borrowing', as: 'user_borrowing'
  get 'borrowings/new'
  get 'borrowings/create'
  get 'borrowings/show'
  get 'borrowings/edit'
  get 'borrowings/update'
  get 'borrowings/destroy'
    

end
