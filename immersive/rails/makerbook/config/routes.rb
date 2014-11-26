Rails.application.routes.draw do
  root 'alumnis#index'
  get '/alumnis/:id' => 'alumnis#show', as: 'alumni'
end
