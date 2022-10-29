Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  resources :users, only: [:show, :edit]
  resources :books, only: [:new, :index, :show, :edit]

end
