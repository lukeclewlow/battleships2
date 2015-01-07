require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/newgame' do
  	@name = params[:name]
  	erb :newgame
  end

  get '/game' do
  	erb :game
  end

  get '/miss' do
    erb :miss
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
