require 'minitest/autorun'
require_relative '../models/game.rb'

class TestRockPaperScissorsGame < Minitest::Test 

def setup
  @game1 = Game.new("rock","rock")
  @game2 = Game.new("paper","scissors")
  @game3 = Game.new("rock","scissors")
  @game4 = Game.new("scissors","paper")
  @game5 = Game.new("paper","rock")
end

def test_create_game_class
  refute_nil(@game1)
end

def test_game_draw
  assert_equal("draw!", @game1.game_method)
end  

def test_game_player_two_wins
  assert_equal("player2 wins!", @game2.game_method)
end

def test_game_player_one_wins
  assert_equal("player1 wins!", @game3.game_method)
end

def test_game_player_one_wins_2
  assert_equal("player1 wins!", @game4.game_method)
end

def test_game_player_one_wins_3
  assert_equal("player1 wins!", @game5.game_method)
end

end