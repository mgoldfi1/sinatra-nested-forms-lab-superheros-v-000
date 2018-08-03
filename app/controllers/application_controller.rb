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
      @h2n = params["member2_name"]
      @h2p = params["member2_power"]
      @h2b = params["member2_bio"]
      @h3n = params["member3_name"]
      @h3p = params["member3_power"]
      @h3b = params["member3_bio"]
      binding.pry
      erb :team
    end
end
