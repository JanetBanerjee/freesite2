Rails.application.routes.draw do
  resources :comments, only: [:index, :create]
  get '/comments/new/(:parent_id)', to: 'comments#new', as: :new_comment
  resources :posts

  devise_for :users
  root to: 'static#homepage'
end
