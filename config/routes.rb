Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get '/home/about' => "homes#about", as: "about"
  resources :books, only: [:new, :create, :index, :edit, :destroy, :show]
  post 'users' => 'users#create'
  resources :users, only: [:show, :edit, :update, :index]
end
