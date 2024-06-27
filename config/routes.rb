Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resource :book_comments, only: [:create]
    resource :favorite, only: [:create, :destroy]
  end
  resources :book_comments, only: [:destroy]
  resources :users, only: [:index,:show,:edit,:update]
  get "home/about"=>"homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
