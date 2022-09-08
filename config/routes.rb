Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get '/about' => "homes#about"
  resources :books, only: [:index, :show, :edit, :update, :create]
  resources :users, only: [:index, :show, :edit, :update]
end
