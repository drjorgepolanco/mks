Rails.application.routes.draw do
  root 'videos#index'

  resources :users do
    resources :videos, only: [:index, :show]
  end

  resources :videos

  get 'signin', controller: :logins, action: :new, as: :signin
  post 'signin', controller: :logins, action: :create
  delete 'logout', controller: :logins, action: :destroy, as: :logout
end
