#! /usr/bin/env ruby
##****************************************************************************
# RUBY - TIC TAC TOE
#****************************************************************************
#   Ruby's Program - Router
#   Written by: Guillaume CHRISTE
# 	Date: 24-Jan-2019
#   
#   Description:
# 		- 
# 		- 
#		
#	Links:
		require './lib/controller'
#
#****************************************************************************
class Router
  def initialize
    @controller =  Controller.new
  end

  def perform
  	system("clear")
    puts "*"*80
    puts " Welcome to the TIC TAC TOE game (morpion for frenchies)"
    puts "*"*80
    puts ""
    @controller.display_rules
    puts ""
	puts "Do you wish to start a new game?"
	print "     Enter  [y]es or [n]o > "
	start_game = gets.chomp.to_s

	if start_game.upcase == "Y"
	  new_game = "Y"
	  @controller.new_game
	  @controller.create_players

	  while new_game.upcase == "Y"
		@controller.new_game
		puts ""
		while @controller.game_round <9
		  @controller.play_game
		end
		puts "Do you wish to play a new game?"
		print "     Enter  [y]es or [n]o > "
		new_game = gets.chomp.to_s
	  end
	end
    puts ""
    puts "*"*80
    puts '    END OF GAME - See You Later ' + Emoji.find_by_alias("broken_heart").raw
    puts "*"*80 
  end
end
# End of Router ..............................................................
#.............................................................................
#.............................................................................