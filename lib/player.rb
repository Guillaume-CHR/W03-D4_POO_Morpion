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
  attr_accessor :name, :position_on_board, :is_winner, :your_turn, :sign

  @@array_player = []

  def initialize(name)
    @@array_player << self
    @name = name
    @position_on_board = [["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"],["A1","B1","C1"],["A2","B2","C2"],["A3","B3","C3"],["A1","B2","C3"],["A3","B2","C1"]]
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

  def iswinner?(new_position)
    @position_on_board.map do |array|
      array.map.with_index do |item,index|
        array[index]="X" if item == new_position
      end
      @is_winner = true if array.count("X") == 3
    end
    return @is_winner
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