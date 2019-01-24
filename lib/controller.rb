#! /usr/bin/env ruby
##****************************************************************************
# RUBY - TIC TAC TOE
#****************************************************************************
#   Ruby's Program - Controller
#   Written by: Guillaume CHRISTE
# 	Date: 24-Jan-2019
#   
#   Description:
# 		- Initiate classes for new games (new_game, create_players, restart)
# 		- Display rules
#     - Play the game (def play_game)
#		
#	Links:
		require './lib/view'
		require './lib/player'
		require './lib/game'
		require './lib/board'
#
#****************************************************************************
class Controller
  #Create a new instance of class View
  def initialize
    @view =  View.new
  end
  
  #Create new instances of class Board & Game
  def new_game
    @board = Board.new
    @game = Game.new
  end

  #Display rules (via class View)
  def display_rules
    @view.display_rules
  end

  #Create players (via class View & Players)
  def create_players
    #Retrieve an array of player name (via class View)
    players = @view.create_players

    #Use this array to create the two players
    @player_one = Player.new(players[0])
    @player_two = Player.new(players[1])
  end

  #Game
  def play_game
    #Clear the prompt
  	system("clear")

    #Retrieve the instance of Player who play this round
    (@player_one.your_turn == true) ? (player = @player_one) : (player = @player_two)

    #Retrieve the hash of cells with their contents (" -", "X" or "O")
  	hash_board  = @board.hash_board

    #Display the board with the previous value, the current player and round (via class View)
  	@view.display_board(hash_board, player, game_round)

    #Retrieve the position played by current player (via class View)
  	new_position = @view.round(player,hash_board)
    #Update hash of cells with new contents (via class Board)
  	new_cases = @board.change_board(player,new_position)

    #Check if player is winner (via class Player)
  	if player.iswinner?(new_position)
      #If a winner is found, the board is updated (via class View)
      @view.display_board(hash_board, player, game_round)
    #If no winner is found
    else
      #Change the round (via class Game)
  	  game_round = @game.new_round

      #Change player turn (via class Player)
  	  @player_one.change_turn
  	  @player_two.change_turn

      #If game round is above 9, the board is displayed
      if game_round = 10
        system("clear")
        @view.display_board(hash_board, player, 9) 
      end
    end
    #Return player (object) to Router
    return player
  end

  #Re-initiate the variable cells used by players and winner (via class Player)
  def restart
    @player_one.position_on_board = [["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"],["A1","B1","C1"],["A2","B2","C2"],["A3","B3","C3"],["A1","B2","C3"],["A3","B2","C1"]]
    @player_two.position_on_board = [["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"],["A1","B1","C1"],["A2","B2","C2"],["A3","B3","C3"],["A1","B2","C3"],["A3","B2","C1"]]
    @player_one.is_winner = false
    @player_two.is_winner = false
  end

  #Increment game round (via class Game)
  def game_round
  	@game.round
  end

end

# End of Controller ..........................................................
#.............................................................................
#.............................................................................