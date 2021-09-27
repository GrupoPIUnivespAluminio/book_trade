Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations}
  authenticated :user do
    root 'books#index', as: :authenticated_root
  end

  resources :users, only: [:show]

  resources :books, only: %i[index show new create edit update]

  resources :conversations, only: %i[show create]

  root 'homepage#index'
end
