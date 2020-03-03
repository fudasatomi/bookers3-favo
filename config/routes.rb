Rails.application.routes.draw do
  root 'home#top'
  get 'home/about'
  devise_for :users
  resources :books do
  	resource :favorites, only:[:create,:destroy]
  	resource :book_comments, only:[:create]
  end
  resources :book_comments,only:[:destroy]
  resources :users,only: [:show,:index,:edit,:update]
end