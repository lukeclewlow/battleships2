require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/board.rb'
require './lib/cell.rb'

class BattleShips < Sinatra::Base

  game = Game.new

  get '/' do
    erb :index
  end

  get '/newgame' do
    @player = Player.new
  	@player.name = params[:name]
    game.player1 = @player
  	erb :newgame
  end

  get '/game' do
    @board = Board.new(Cell)
    @grid = @board.grid
    @keys = @grid.keys
    @coord = params[:coord]
  	erb :game
  end

  get '/miss' do
    erb :miss
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
