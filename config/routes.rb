Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'index/show'
  get 'users/index'
  get 'users/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show]
  resources :posts, only: [:index, :show, :create]
  root 'posts#index'
end
