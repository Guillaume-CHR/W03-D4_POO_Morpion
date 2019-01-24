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
  	system("clear")
    (@player_one.your_turn == true) ? (player = @player_one) : (player = @player_two)
  	hash_board  = @board.hash_board
  	@view.display_board(hash_board, player, game_round)
  	new_position = @view.round(player,hash_board)
  	new_cases = @board.change_board(player,new_position)

  	if player.iswinner?(new_position)
      @view.display_board(hash_board, player, game_round)
      return player
    else
  	  game_round = @game.new_round
  	  @player_one.change_turn
  	  @player_two.change_turn
      if game_round = 10
        system("clear")
        @view.display_board(hash_board, player, 9) 
      end
      return player
    end
  end

  def restart
    @player_one.position_on_board = [["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"],["A1","B1","C1"],["A2","B2","C2"],["A3","B3","C3"],["A1","B2","C3"],["A3","B2","C1"]]
    @player_two.position_on_board = [["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"],["A1","B1","C1"],["A2","B2","C2"],["A3","B3","C3"],["A1","B2","C3"],["A3","B2","C1"]]
    @player_one.is_winner = false
    @player_two.is_winner = false
  end

  def game_round
  	@game.round
  end

end

# End of Controller ..........................................................
#.............................................................................
#.............................................................................