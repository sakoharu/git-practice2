Rails.application.routes.draw do

  get 'images/new'
  get 'images/index'
  get 'images/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  "homes#top"
  devise_for :users

  resources :images, only: [:new, :index, :show]

  get "homes/about" => "homes#about", as: 'about'


  resources :post_images, only: [:new, :create, :index, :show]


end
