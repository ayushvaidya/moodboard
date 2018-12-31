Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :categories, :path => "/boards"
  resources :posts do
    collection do
      patch :sort
    end
  end

  resources :users, only: [:show]

end
