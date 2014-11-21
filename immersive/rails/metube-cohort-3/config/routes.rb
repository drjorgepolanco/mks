Rails.application.routes.draw do

  get '/videos' => 'videos#show_all'

  get '/videos/gladiator' => 'videos#show_gladiator'
  get '/videos/matilda' => 'videos#show_matilda'
  get '/videos/seinfeld' => 'videos#show_seinfeld'
  get '/videos/friends' => 'videos#show_friends'
end
