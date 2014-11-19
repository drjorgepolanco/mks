require 'rubygems'
require 'sinatra'
require 'pry-byebug'

set :bind, '0.0.0.0'

get '/time' do
	erb :time
end

get '/gather-info' do
	erb :info
end