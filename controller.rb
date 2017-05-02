require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game.rb')

get '/' do
  erb(:home)
end

get '/about-us' do
  erb(:about)
end


# get '/rock_wins/:player1/:player2' do
#   player1 = params[:player1].to_s
#   player2 = params[:player2].to_s
#   game = Game.new(@object1, @object2)
#   @game = game.rock_wins()
#   erb(:result)
# end

get '/RPS/:player1/:player2' do
  player1 = params[:player1].to_s
  player2 = params[:player2].to_s
  game = Game.new(player1, player2)
  return "#{game.game_method()}"
  # @result = game.game_method()
  # erb(:result)
end