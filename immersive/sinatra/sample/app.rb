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

post '/info-summary' do
  puts params
  @name = params[:name]
  @email = params[:mail]
  @vegetarian = params[:vegetarian]
  @blood_type = params[:bloodtype]
  erb :summary
end