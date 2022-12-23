Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get '/home/about' => "homes#about", as: "about"
  resources :books, only: [:new, :create, :index, :destroy, :show, :edit, :update]
  post 'users' => 'users#create'
  resources :users, only: [:show, :edit, :update, :index]
end
