#! /usr/bin/env ruby
##****************************************************************************
# RUBY - TIC TAC TOE
#****************************************************************************
#   Ruby's Program - Board & Cell
#   Written by: Guillaume CHRISTE
# 	Date: 24-Jan-2019
#   
#   Description:
# 		- 
# 		- 
#		
#	Links:
#		require './lib/controller'
#
#****************************************************************************
class Board
  attr_accessor :hash_board
  def initialize
    @hash_board = {"A1"=>" -","A2"=>" -","A3"=>" -","B1"=>" -","B2"=>" -","B3"=>" -","C1"=>" -","C2"=>" -","C3"=>" -"}
  end

  def change_board(player,new_position)
    @hash_board["#{new_position}"] = player.sign
  end
end
# End of Board ...............................................................
#.............................................................................
#.............................................................................