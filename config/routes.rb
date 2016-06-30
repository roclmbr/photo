Rails.application.routes.draw do
    
  root 'welcome#index'
  devise_for :users  
  resources :articles
  resources :images
  resources :categories, except: [:destroy]
  
  get 'pages/about', to: 'pages#about'
  get 'pages/climbing', to: 'pages#climbing'
  get 'pages/offroading', to: 'pages#offroading'
  get 'pages/blog', to: 'pages#blog' 
  get 'pages/users', to: 'pages#users'
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"
    
end
