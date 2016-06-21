Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  #get 'pages/about', to: 'pages#about'
  #get 'pages/climbing', to: 'pages#climbing'
  #get 'pages/offroading', to: 'pages#offroading'

end
