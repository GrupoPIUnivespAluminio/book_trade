Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'books#index', as: :authenticated_root
  end

  resources :books, only: %i[index show new create edit update]

  root 'homepage#index'
end
