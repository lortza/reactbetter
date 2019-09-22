Rails.application.routes.draw do

  root "pages#home"

  resources :users
  resources :reactions
  resource :session
  get "signin" => "sessions#new"

  get 'pages/home'
  get 'pages/about'
  get "about" => "pages#about"
  get 'pages/react'
  get "react" => "pages#react"
end
