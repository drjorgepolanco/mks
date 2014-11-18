require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

get '/' do
	@name = "Jorgito"
	@show_description = true
	erb :index
end

post '/twitter' do
	erb :twitter
end