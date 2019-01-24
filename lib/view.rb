class View
  def initialize
  end
	
  def display_rules
    puts "*"*80
    puts "This 2-player game is very easy to play:"
    puts "  The board is a square composed of 9 smaller squares"
    puts "  One after the others, players will place a mark in an unoccupied square"
    puts "  The goal is to align 3 symbols in row or column or diagonal"
    puts "  The game ends when one player aligns 3 symbols or when the board is full"
    puts "*"*80
  end

  def create_players
  	puts "To continue, please enter your names: "
    print "     Hello player one, enter your name > "
    player_one = gets.chomp.to_s
    print "     Hello player two, enter your name > "
    player_two = gets.chomp.to_s

    puts "\n\nWelcome #{player_one}. Welcome #{player_two}."
    puts "The game is about to begin, #{player_one} if first to play\n\n"
    return [player_one, player_two].to_a
  end

  def display_board(array_position)
  	a = [" -"," -"," -"]
  	b = [" -"," -"," -"]
  	c = [" -"," -"," -"]
  	for i in (0..2) 
	  a[i] = Emoji.find_by_alias("o").raw
	  b[i] = Emoji.find_by_alias("x").raw
	  c[i] = " -"
  	end

	puts "
	     1     2     3
	   _________________
	  |     |     |     |
	A | #{a[0]}  | #{a[1]}  | #{a[2]}  |
	  |_____|_____|_____|
	  |     |     |     |
	B | #{b[0]}  | #{b[1]}  | #{b[2]}  |
	  |_____|_____|_____|
	  |     |     |     |
	C | #{c[0]}  | #{c[1]}  | #{c[2]}  |
	  |_____|_____|_____|
	"
  end
end
