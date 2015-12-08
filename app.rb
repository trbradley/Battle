require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  # post '/names' do
  #   @player_1_name = params[:player_1_name]
  #   @player_2_name = params[:player_2_name]
  #   erb :play
  # end

  post '/names' do
    p params
    session[:player_1] = params[:player_1_name]
    session[:player_2] = params[:player_2_name]
    p session[:player_1]
    p session[:player_2]
    redirect '/play'
  end

  get '/play' do
    p session
    @player_1_name = session[:player_1]
    @player_2_name = session[:player_2]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
