require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
	"Hey, this is a web app."	
end

get '/hello' do
	"Hello friends!"
end