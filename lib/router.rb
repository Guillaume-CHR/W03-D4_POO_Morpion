#! /usr/bin/env ruby
##****************************************************************************
# RUBY - TIC TAC TOE
#****************************************************************************
#   Ruby's Program - Router
#   Written by: Guillaume CHRISTE
# 	Date: 24-Jan-2019
#   
#   Description:
# 		- Initiate a new controller (class) to perform the actions
# 		- All actions (initiate, reset, end game) are performed here
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
  	#Display header of the game
  	system("clear")
    puts "*"*80
    puts " Welcome to the TIC TAC TOE game (morpion for frenchies)"
    puts "*"*80
    puts ""

    #Display rules (Controller > View)
    @controller.display_rules

    #Ask user if he wishes to launch a game
    puts ""
	puts "Do you wish to start a new game?".colorize(:green)
	print "     Enter  [y]es or [n]o > ".colorize(:green)
	start_game = gets.chomp.to_s

	if start_game.upcase == "Y"
	  #Initiate game variable 
	  new_game = "Y"

	  #Create player (Controller > View then Controller > Player)
	  @controller.create_players

	  #Launch a game
	  while new_game.upcase == "Y"
	  	#Initiate game (Controller > Board then Controller > Game)
		@controller.new_game
		winner = false
		puts ""

		#Play a game while round equal to 9 or a winner is found
		while @controller.game_round <=9 and winner == false 
		  #Return the ongoing player (either winner or current) 
		  player = @controller.play_game
		  #If a winner is found, the game ends
		  winner = true if player.is_winner
		end
		system("clear")
		
	  	if winner == true 
	  	  #Display winner if any
	  	  puts "*".colorize(:green)*80
	  	  puts "\n Congratulations #{player.name}!! You WON!!\n".colorize(:green)
	  	  puts "*".colorize(:green)*80
	  	else
	  	  #Display game over if no one won
	  	  puts "*".colorize(:red)*80
	  	  puts "\n GAME OVER - No one won \n".colorize(:red)
	  	  puts "*".colorize(:red)*80
	  	end

	  	#Restart the game if the user say so
	  	
		puts "\n\nDo you wish to play a new game?".colorize(:green)
		print "     Enter  [y]es or [n]o > ".colorize(:green)
		new_game = gets.chomp.to_s
		@controller.restart if new_game.upcase == "Y"
		system("clear")
	  end

	end

	#Display footer of the game
    puts ""
    puts "*".colorize(:red)*80
    puts '    END OF GAME - See You Later '.colorize(:red) + Emoji.find_by_alias("broken_heart").raw
    puts "*".colorize(:red)*80 
  end
end
# End of Router ..............................................................
#.............................................................................
#.............................................................................