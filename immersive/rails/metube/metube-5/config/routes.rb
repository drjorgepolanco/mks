Rails.application.routes.draw do
  root 'videos#show_all'
  get '/videos/new' => 'videos#new', as: 'new_video'
  post '/videos' => 'videos#create'
  get '/videos' => 'videos#show_all'
  get '/videos/:id' => 'videos#show', as: 'video'
end
