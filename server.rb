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

post '/cmd' do
  "You looked up #{params[:cmd]}."
  `man #{params[:cmd]}`
end

post '/list' do
  case object
  when params[:touch]
    "You looked up #{params[:touch]}."
    `man #{params[:touch]}`
  when params[:cp]
    "You looked up #{params[:cp]}."
    `man #{params[:cp]}`
  when params[:mkdir]
    "You looked up #{params[:mkdir]}."
    `man #{params[:mkdir]}`
  when params[:nano]
    "You looked up #{params[:nano]}."
    `man #{params[:nano]}`
  when params[:less]
    "You looked up #{params[:less]}."
    `man #{params[:less]}`
  when params[:vim]
    "You looked up #{params[:vim]}."
    `man #{params[:vim]}`]
  end

end


not_found do
  status 404
  "We don't know what you did pal... But you really screwed things up!"
end
