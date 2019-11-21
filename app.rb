require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end


post '/names' do
  session[:player1] = params[:player1]
  session[:player2] = params[:player2]
  redirect '/play'
end

get '/play' do
  @player1 = $player1.name
  @player2 = $player2.name
erb :play
end

get '/attack' do
  @player_1_name = $player_1.name
  @player_2_name = $player_2.name
  erb :attack
end

run! if app_file == $0
end

#
#
#   # start the server if ruby file executed directly
  # run! if app_file == $0
# end
