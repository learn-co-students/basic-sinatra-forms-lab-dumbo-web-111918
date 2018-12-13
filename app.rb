require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  # so after creating the GET request from the newteam.erb file, we need a POST request to save the info and show it
  post '/newteam' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @sf = params[:sf]
    @pf = params[:pf]
    @c = params[:c]
    erb :team
  end


end
