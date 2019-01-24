class View
  def initialize
  end
	
  def display_rules
    puts "*" * 80
    puts "This 2-player game is very easy to play:"
    puts "  The board is a square composed of 9 smaller squares"
    puts "  One after the others, players will place a mark in an unoccupied square"
    puts "  The goal is to align 3 symbols in row or column or diagonal"
    puts "  The game ends when one player aligns 3 symbols or when the board is full"
    puts "*" * 80
  end

  def create_players
  	puts "\nTo continue, please enter your names: "
    print "     Hello player one, enter your name > "
    player_one = gets.chomp.to_s
    print "     Hello player two, enter your name > "
    player_two = gets.chomp.to_s

    puts "\n\nWelcome #{player_one}. Welcome #{player_two}."
    puts "The game is about to begin, #{player_one} is first to play"
    return [player_one, player_two].to_a
  end

  def round(player,hash_board)
  	puts "          Damn it #{player.name}, that's your turn."
  	puts "          (Your sign is #{player.sign})"
  	while true
  	  print "          Select the case you want to play (format A1) > "
      case_played = gets.chomp.to_s
      if hash_board["#{case_played.upcase}"] == " -"
      	return case_played
      else
      	puts "          Wrong choice!!!\n"
      end
    end
  end

  def display_board(hash_board, player, game_round)

	puts "*"*80
	puts "    Round | #{game_round}"
	puts "    Turn  | #{player.name} (use sign #{player.sign})"
	puts "*"*80
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
	"
  end
end
