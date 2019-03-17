require 'dotenv/load'
require 'bundler'
Bundler.require


class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/result' do 
    puts params 
    @job_type = params[:keyword]
    @where = params[:location]
    @seperate =params[:sort]
    @length_of_list = [:page]
    erb :result
  end
end
