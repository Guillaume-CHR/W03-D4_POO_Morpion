#! /usr/bin/env ruby
##****************************************************************************
# RUBY - TIC TAC TOE
#****************************************************************************
#   Ruby's Program - Player
#   Written by: Guillaume CHRISTE
# 	Date: 24-Jan-2019
#   
#   Description:
# 		- Initiate Player (put in array) with:
#           - name (from View via Controller)
#           - cells occupied by user
#           - winner (y/n)
#           - turn to play (true or false)
#           - sign (emoji (gem gemoji) X or O)
# 		- Change turn of player (def change turn)
#     - Check if player is winner and update cells used by user (ex A1 ==> X)
#
#****************************************************************************
class Player
  attr_accessor :name, :position_on_board, :is_winner, :your_turn, :sign

  @@array_player = []

  #Initiate players
  def initialize(name)
    @@array_player << self
    @name = name
    #Define an array with 8 arrays of winning combination
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

  #Change turn value of the player
  def change_turn
    @your_turn = !@your_turn
  end

  #Check if player is winner and update cells used by user (ex A1 ==> X)
  def iswinner?(new_position)
    #
    @position_on_board.map do |array|
      array.map.with_index do |item,index|
        array[index]="X" if item == new_position
      end
      @is_winner = true if array.count("X") == 3
    end
    return @is_winner
  end
end
# End of Player ..............................................................
#.............................................................................
#.............................................................................