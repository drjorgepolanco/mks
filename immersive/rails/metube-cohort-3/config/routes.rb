Rails.application.routes.draw do

  root "videos#show_all"
  get '/videos' => 'videos#show_all', as: 'videos'
  get '/videos/:video_name' => 'videos#show', as: 'video'
  get 'videos/:video_one_name/:video_two_name' => 'videos#show_two', as: 'show_two'

  # get '/videos/gladiator' => 'videos#show_gladiator', as: 'gladiator_video'
  # get '/videos/matilda' => 'videos#show_matilda', as: 'matilda_video'
  # get '/videos/seinfeld' => 'videos#show_seinfeld', as: 'seinfeld_video'
  # get '/videos/friends' => 'videos#show_friends', as: 'friends_video'
end
