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
    Player.new(players[0])
    Player.new(players[1])
  end

  def display_board
  	array_position = (Player.display_board)
  	@view.display_board(array_position)
  end

end

# End of Controller ..........................................................
#.............................................................................
#.............................................................................