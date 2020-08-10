Rails.application.routes.draw do

  root to: 'tasks#index'    
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
   
  get 'signup', to: 'users#new'
  
  resources :tasks
  resources :users, only: [:new, :create, :destroy]
end
