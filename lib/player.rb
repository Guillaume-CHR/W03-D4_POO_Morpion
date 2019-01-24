#! /usr/bin/env ruby
##****************************************************************************
# RUBY - TIC TAC TOE
#****************************************************************************
#   Ruby's Program - Player
#   Written by: Guillaume CHRISTE
# 	Date: 24-Jan-2019
#   
#   Description:
# 		- 
# 		- 
#		
#	Links:
		#require './lib/controller'
#
#****************************************************************************
class Player
  attr_reader :name, :position_on_board, :is_winner, :your_turn, :sign

  @@array_player = []

  def initialize(name)
    @@array_player << self
    @name = name
    @position_on_board = []
    @is_winner = false
    if self == @@array_player[0]
      @your_turn = true
      @sign = Emoji.find_by_alias("o").raw
    else
      @your_turn = false
      @sign = Emoji.find_by_alias("x").raw
    end
  end

  def change_turn
    @your_turn = !@your_turn
  end

  def iswinner? (array_cell)

  end

  def self.display_board
    array_position = []
    @@array_player.each {|player| array_position << {player: player.name, position: player.position_on_board}.to_h}
    return array_position
  end
end
# End of Player ..............................................................
#.............................................................................
#.............................................................................