require 'pry'
require 'sinatra'
require 'colorize'
require 'Haml'

get '/' do
  haml :home
end

get '/search' do
  haml :search
end

get '/list' do
  haml :list
end

get '/result' do
  haml :result
end

post '/result' do
  haml :result
end


not_found do
  status 404
  "We don't know what you did pal... But you really screwed things up!"
end
