Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'pages/home'
  resources :stories, only: [:new, :create, :show, :index, :update, :destroy]
  get 'pages/profile'
end
