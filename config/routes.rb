Rails.application.routes.draw do
    
    devise_for :users, :controllers => { :registrations => "user/registrations" } 
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show] 
  resources :friendships  
  resources :articles
  resources :images
  resources :categories, except: [:destroy]
    
  root 'welcome#index'
  
  get 'pages/about', to: 'pages#about'
  get 'pages/climbing', to: 'pages#climbing'
  get 'pages/offroading', to: 'pages#offroading'
  get 'pages/blog', to: 'pages#blog' 
  get 'pages/users', to: 'pages#users'
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"
  get 'my_friends', to: "users#my_friends" 
  get 'search_friends', to: "users#search"
    
  post 'add_friend', to: "users#add_friend"
end
