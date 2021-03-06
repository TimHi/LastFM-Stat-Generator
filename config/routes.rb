# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do
  root 'lastfm#index'

  get '/lastfm', to: 'lastfm#index'
  get '/about', to: 'about#index'
  post 'start_generation' => 'lastfm#start_button_clicked', as: :start_button_clicked
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
