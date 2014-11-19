require 'rubygems'
require 'sinatra'

set :bind, '0.0.0.0'

get '/welcome/:name' do
	@name = params[:name]
	erb :welcome
end