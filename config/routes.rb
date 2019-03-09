Rails.application.routes.draw do
  root  'pages#home'
  get 'about', to: 'pages#about'


resources :articles
resources :index
resources :users
end