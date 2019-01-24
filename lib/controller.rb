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
		require './lib/board'
#
#****************************************************************************
class Controller
  def initialize
    @view =  View.new
  end
  
  def new_game
    @board = Board.new
    @game = Game.new
  end

  def display_rules
    @view.display_rules
  end

  def create_players
    players = @view.create_players
    @player_one = Player.new(players[0])
    @player_two = Player.new(players[1])
  end

  def play_game
  	(@player_one.your_turn == true) ? (player = @player_one) : (player = @player_two)
  	array_cases = @board.hash_board
  	new_position = @view.round(player,array_cases)


  	new_position =
  	hash_board = @board.hash_board
  	

  	game_round = @game.new_round
  	@view.display_board(hash_board, turn, game_round, sign)
  end
  def game_round
  	@game.round
  end
  def game_status
    @game.status
  end
end

# End of Controller ..........................................................
#.............................................................................
#.............................................................................