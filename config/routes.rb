Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :index, :show, :create, :destroy]

  get "homes/about", as: "about"
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end