require 'bundler'
require 'sinatra'

Bundler.require

require './msite'
run Sinatra::Application
