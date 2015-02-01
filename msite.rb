require 'bundler'
require 'sinatra'

configure do
  enable :sessions
  set :username, "Erik"
  set :password, "Godzilla"
end

get '/' do
  erb :home
end

get '/login' do
  erb :login
end

post '/login' do
  if params[:username] == settings.username && params[:password] == settings.password
    session[:admin] = true
    redirect to('/songs')
  else
    erb :login
  end
end

get '/logout' do
  session.clear
  redirect to('/login')
end
