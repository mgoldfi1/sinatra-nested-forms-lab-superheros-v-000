require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end
    post '/teams' do
      @team_name = params[team[name]]
      @team_motto = params[team[motto]]
      @h1n = params["member1_name"]
      @h1p = params["member1_power"]
      @h1b = params["member1_bio"]
      erb :team
    end
end
