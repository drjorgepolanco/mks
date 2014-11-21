Rails.application.routes.draw do
  get "/movies/gladiator" => "movies#show_gladiator"
  get "/movies/matilda" => "movies#show_matilda"
  get '/movies/batman' => 'movies#show_batman'
  get '/movies/superman' => 'movies#show_superman'
  get '/shows/seinfeld' => 'shows#show_seinfeld'
  get '/shows/friends' => 'shows#show_friends'
  get '/shows/senora_acero' => 'shows#show_senora_acero'
end
