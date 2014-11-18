require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@name = "Jorgito"
	@show_description = true
	erb :index
end

post '/twitter' do
end