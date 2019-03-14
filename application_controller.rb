require 'dotenv/load'
require 'bundler'
Bundler.require

require 'net/http'
require 'uri'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/result' do 
    #puts params 
    @location = params[:input1]
    @job_type = params[:input2]
    erb :result
  end
end
