require 'rubygems'
require 'sinatra'

set :bind, '0.0.0.0'

get '/welcome/:name' do
  @name = params[:name]
  erb :welcome
end

get '/say/*/to/*' do
  puts params
  erb :say
end

get '/dog-registration' do
  erb :test
end

get '/dog-registration-results' do
  erb :dog_registration_results
end