source 'https://rubygems.org'
require 'bundler'
require 'sinatra'

Bundler.require

require './msite_deux'
run Sinatra::Application
