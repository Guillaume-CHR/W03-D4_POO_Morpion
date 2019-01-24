#! /usr/bin/env ruby
##****************************************************************************
# RUBY - TIC TAC TOE
#****************************************************************************
#   Ruby's Program - Controller
#   Written by: Guillaume CHRISTE
# 	Date: 24-Jan-2019
#   
#   Description:
# 		- 
# 		- 
#		
#	Links:
		require './lib/view'
		require './lib/player'
		require './lib/game'
#
#****************************************************************************
#****************************************************************************
class Controller
  def initialize
    @view =  View.new
  end

  def display_rules
    @view.display_rules
  end

  def create_players
    players = @view.create_players
    @player_one = Player.new(players[0])
    @player_two = Player.new(players[1])
  end

  def start_game
  	hash_board =  
  	array_position = (Player.display_board)
  	

  	if @player_one.your_turn == true
  	  turn = @player_one.name
  	  sign = @player_one.sign
  	else
  	  turn = @player_two.name
  	  sign = @player_two.sign
  	end
  	game_round = Game.new.new_round
  	@view.display_board(array_position, turn, game_round, sign)
  end

  def game_status
    game = Game.new
    return game.status
  end
end

# End of Controller ..........................................................
#.............................................................................
#.............................................................................