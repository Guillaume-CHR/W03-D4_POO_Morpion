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
    puts "The game is about to begin, #{player_one} if first to play"
    return [player_one, player_two].to_a
  end

  def display_board(array_position, turn, game_round, sign)

	puts "*"*80
	puts "    Round | #{game_round}"
	puts "    Turn  | #{turn} (use sign #{sign})"
	puts "*"*80
	puts "Here is the ongoing board:

	     1     2     3
	   _________________
	  |     |     |     |
	A | #{has_board[:A1]}  | #{has_board[:A2]}  | #{has_board[:A3]}  |
	  |_____|_____|_____|
	  |     |     |     |
	B | #{has_board[:B1]}  | #{has_board[:B2]}  | #{has_board[:B3]}  |
	  |_____|_____|_____|
	  |     |     |     |
	C | #{has_board[:C1]}  | #{has_board[:C2]}  | #{has_board[:C3]}  |
	  |_____|_____|_____|
	"
  end
end
