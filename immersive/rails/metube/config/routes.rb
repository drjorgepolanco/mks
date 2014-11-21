Rails.application.routes.draw do
  get "/movies/gladiator" => "movies#show_gladiator"
  get "/movies/matilda" => "movies#show_matilda"
  get '/movies/batman' => 'movies#show_batman'
  get 'movies/superman' => 'movies#show_superman'
end
