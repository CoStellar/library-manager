# frozen_string_literal: true

Rails.application.routes.draw do
  root 'panel#index'
  devise_for :users
end
