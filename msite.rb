require 'sinatra'
require 'bundler'
require 'rubygems'

get '/' do
  erb :home
end
