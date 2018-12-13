require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1]).name
    $player_2 = Player.new(params[:player_2]).name

    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2

    erb :play
  end

  get '/attack_p2' do
    @player_1 = $player_1
    @player_2 = $player_2

    erb :attack_confirmation
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
