require 'sinatra/base'

class App < Sinatra::Base
get '/newteam' do
  erb :newteam

end

 put "team" do
   @team = Team.create(params[:team])
    redirect to "/team/#{@team.id}"
    erb :team

 end
end
