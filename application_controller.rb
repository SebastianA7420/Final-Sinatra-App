require 'dotenv/load'
require 'bundler'


require 'net/http'
Bundler.require



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
