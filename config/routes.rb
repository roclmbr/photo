Rails.application.routes.draw do
    
  root 'welcome#index'
  devise_for :users  
  resources :articles
  resources :images
  
  get 'pages/about', to: 'pages#about'
  get 'pages/climbing', to: 'pages#climbing'
  get 'pages/offroading', to: 'pages#offroading'
  get 'pages/blog', to: 'pages#blog'  
end
