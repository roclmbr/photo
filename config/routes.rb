Rails.application.routes.draw do
  resources :articles
  devise_for :users
  resources :images
  root 'welcome#index'
  get 'pages/about', to: 'pages#about'
  get 'pages/climbing', to: 'pages#climbing'
  get 'pages/offroading', to: 'pages#offroading'
  get 'pages/blog', to: 'pages#blog'  
end
