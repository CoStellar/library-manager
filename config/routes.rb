# frozen_string_literal: true

Rails.application.routes.draw do
  root 'panel#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # Usuń zasób dla użytkowników, jeśli go nie używasz
  # resources :users

  # Dodaj trasę do niestandardowej akcji
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
end