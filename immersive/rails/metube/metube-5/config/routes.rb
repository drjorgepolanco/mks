Rails.application.routes.draw do
  root    'videos#index'
  resources :videos
  # get     '/videos/new'       => 'videos#new',  as: 'new_video'
  # get     '/videos/:id'       => 'videos#show', as: 'video'
  # get     '/videos/:id/edit'  => 'videos#edit', as: 'edit_video'
  # post    '/videos'           => 'videos#create'
  # put     '/videos/:id'       => 'videos#update'
  # patch   '/videos/:id'       => 'videos#update'
  # delete  '/videos/:id'       => 'videos#destroy'
end
