class View
  #Display rules
  def display_rules
    puts "*".colorize(:red) * 80
    puts "This 2-player game is very easy to play:".colorize(:red)
    puts "  The board is a square composed of 9 smaller squares".colorize(:red)
    puts "  One after the others, players will place a mark in an unoccupied square".colorize(:red)
    puts "  The goal is to align 3 symbols in row or column or diagonal".colorize(:red)
    puts "  The game ends when one player aligns 3 symbols or when the board is full".colorize(:red)
    puts "*".colorize(:red) * 80
  end

  #Ask user to enter their names & welcome them
  def create_players
  	puts "\nTo continue, please enter your names: ".colorize(:green)
    print "     Hello player one, enter your name > ".colorize(:green)
    player_one = gets.chomp.to_s
    print "     Hello player two, enter your name > ".colorize(:green)
    player_two = gets.chomp.to_s

    puts "\n\nWelcome #{player_one}. Welcome #{player_two}.".colorize(:red)
    puts "The game is about to begin, #{player_one} is first to play".colorize(:red)
    return [player_one, player_two].to_a
  end

  #Write whose turn it is and remind the sign used
  #Collect and check user input
  def round(player,hash_board)
  	puts "          Damn it #{player.name}, that's your turn.".colorize(:green)
  	puts "          (Your sign is #{player.sign})".colorize(:green)
  	while true
  	  print "          Select the case you want to play (format A1) > ".colorize(:green)
      case_played = (gets.chomp.to_s).upcase
      if hash_board["#{case_played.upcase}"] == " -"
      	return case_played
      else
      	puts "          Wrong choice!!!\n".colorize(:red)
      end
    end
  end

  #Display board
  def display_board(hash_board, player, game_round)

	puts "*".colorize(:red)*80
	puts "    Round | #{game_round}".colorize(:red)
	puts "    Turn  | #{player.name} (use sign #{player.sign})".colorize(:red)
	puts "*".colorize(:red)*80
	puts "Here is the ongoing board:

	     1     2     3
	   _________________
	  |     |     |     |
	A | #{hash_board["A1"]}  | #{hash_board["A2"]}  | #{hash_board["A3"]}  |
	  |_____|_____|_____|
	  |     |     |     |
	B | #{hash_board["B1"]}  | #{hash_board["B2"]}  | #{hash_board["B3"]}  |
	  |_____|_____|_____|
	  |     |     |     |
	C | #{hash_board["C1"]}  | #{hash_board["C2"]}  | #{hash_board["C3"]}  |
	  |_____|_____|_____|
	".colorize(:light_blue)
  end
end
