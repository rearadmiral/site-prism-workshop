require 'rubygems'
require 'bundler'
Bundler.setup
require 'sinatra'

class App < Sinatra::Base
  get '/' do
    redirect '/index.html'
  end
end

run App
