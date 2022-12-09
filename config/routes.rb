Rails.application.routes.draw do
  get 'home/about' => "homes#about", as: "about"
  root to: "home#top"
  devise_for :users
  post 'users' => 'users#create'
  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:new, :index, :show, :edit]

end
