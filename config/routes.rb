Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show]
  resources :posts, only: [:index, :show, :create, :destroy] do
     resources :comments, only: [:create]
  end
  get  'static_pages/home'
  get 'static_pages/contact'
  delete 'posts/:id' => 'posts#destroy'
  root 'posts#index'
  
end
