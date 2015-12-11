require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base
  enable :sessions

  helpers do
    def game
      @game ||= $game
    end
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect('/play')
  end

  get '/play' do
    game
    erb :play
  end

  get '/attack' do
    @attack = Attack.new
    @attack.default_attack(game.opponent_of(game.current_turn))
    erb :attack
  end

  post '/switch_turns' do
    game.switch_turns
    redirect('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
