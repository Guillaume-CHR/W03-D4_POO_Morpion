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
	  @controller.create_players

	  while new_game.upcase == "Y"
		@controller.new_game

		winner = false
		puts ""
		while @controller.game_round <=9 and winner == false 
		  player = @controller.play_game
		  winner = true if player.is_winner
		end
		system("clear")
		puts "*"*80
	  	if winner == true 
	  	  puts "\n Congratulations #{player.name}!! You WON!!\n"
	  	else
	  	  puts "\n GAME OVER - No one won \n"
	  	end
	  	puts "*"*80
		puts "\n\nDo you wish to play a new game?"
		print "     Enter  [y]es or [n]o > "
		new_game = gets.chomp.to_s
		@controller.restart
		system("clear")
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