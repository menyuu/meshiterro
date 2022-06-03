Rails.application.routes.draw do

  resources :post_images, only: [:new, :index, :show, :create]
  devise_for :users
  get "homes/about", as: "about"
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
