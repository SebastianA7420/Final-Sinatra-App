require 'dotenv/load'
require 'bundler'
require 'uri'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/result' do 
    erb :result
  end
end
