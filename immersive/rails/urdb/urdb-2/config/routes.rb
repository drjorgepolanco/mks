Rails.application.routes.draw do
  root 'movies#index'
  resources :movies do
  	resources :showtimes
  end
end
