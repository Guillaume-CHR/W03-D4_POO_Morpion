<h1>Welcome to the program 'TIC TAC TOE'</h1>

<h4>This program has been written by: Selmen M'HAMDI (@Selmen) & Guillaume CHRISTE (@guillaume)</h4>

This program is composed of several classes:
<ul>
	<li>
		<h4>Router:</h4> 
		<ul>
			<li>Display of the header of the game</li>
			<li>Use class View to display rules</li>
			<li>Ask the user to start a new game</li>
			<li>Create users</li>
			<li>Use class Controller to:</li>
			<ul>
				<li>Reset the board (via class Board)</li>
				<li>Create a new game (via class Game)</li>
				<li>Launch the game (multi class)</li>
			</ul>
			<li>Check winner at each round (via class Player)</li>
			<li>Display outcome of game</li>
			<li>Reset game (via class Game)</li>
		</ul>
	</li>
	<li>
		<h4>Controller:</h4>
		<ul>
			<li>Initiate game (players, board, game...)</li>
			<li>Play the game:</li>
			<ul>
				<li>Check which player shall play</li>
				<li>Retrieve position (via class View)</li>
				<li>Incorporate new position (via class Board)</li>
				<li>Check if there is a winner</li>
				<li>Return winner or launch a new round</li>
			</ul>
		</ul>
	</li>
	<li>
		<h4>View:</h4>
		<ul>
			<li>Display rules</li>
			<li>Display board</li>
			<li>Create users</li>
		</ul>
	</li>
	<li>
		<h4>Game:</h4>
		<ul>
			<li>Define game round</li>
		</ul>
	</li>
	<li>
		<h4>Board:</h4>
		<ul>
			<li>Initiate board (empty cells)</li>
			<li>Add players' inputs</li>
		</ul>
	</li>
	<li>
		<h4>Player:</h4>
		<ul>
			<li>Initiate player:</li>
			<ul>
				<li>Define name (via class View)</li>
				<li>Define occupied cases on the board by player</li>
				<li>Define if the player plays this round</li>
				<li>Define the sign O or X</li>
				<li>Define if player is winner or not</li>
			</ul>
			<li>Change turn</li>
			<li>Check if player won or not</li>
			<li>Return information to controller</li>
		</ul>
	</li>
</ul>