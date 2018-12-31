Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :categories, :path => "/boards"
  resources :posts

  resources :users, only: [:show]

end
