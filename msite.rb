source 'https://rubygems.org'
require 'bundler'
require 'sinatra'
get '/' do
  erb :home
end
