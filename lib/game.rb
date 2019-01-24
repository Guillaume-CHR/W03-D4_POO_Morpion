#! /usr/bin/env ruby
##****************************************************************************
# RUBY - TIC TAC TOE
#****************************************************************************
#   Ruby's Program - Game
#   Written by: Guillaume CHRISTE
# 	Date: 24-Jan-2019
#   
#   Description: 
# 		- Increment game round (not useful really...)
#		
#	Links:
		#require './lib/router'
#
#****************************************************************************
class Game
  attr_accessor :round

  def initialize
    @round = 1
  end

  def new_round
  	@round +=1
  end
end

# End of Game ...............................................................
#.............................................................................
#.............................................................................