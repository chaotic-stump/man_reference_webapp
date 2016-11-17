require 'pry'
require 'sinatra'
require 'colorize'

get '/' do
  erb :home
end

get '/search' do
  erb :search
end

get '/list' do
  erb :list
end

get '/result' do
  "You looked up #{params[:cmd]}."
  `man #{params[:cmd]}`.to_s
end

post '/result' do
  "You looked up #{params[:cmd]}."
  `man #{params[:cmd]}`.to_s
end


not_found do
  status 404
  "We don't know what you did pal... But you really screwed things up!"
end
