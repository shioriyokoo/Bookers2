Rails.application.routes.draw do
  get 'home/about'
  root to: "home#top"
  devise_for :users
  post 'users' => 'users#create'
  resources :users, only: [:show, :edit]
  resources :books, only: [:new, :index, :show, :edit]

end
