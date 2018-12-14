require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        # @params = params
        @team_array = []
        params.each do |param|
            binding.pry
            @team_array << param[1]
        end
        erb :team
    end

end
