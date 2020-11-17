# frozen_string_literal: true

Rails.application.routes.draw do
  resources :game_levels
  resources :games
  resources :levels
  root 'game_levels#index'
end
