#Tennis App

by [Jorge Polanco](http://www.drjorgepolanco.com/).

Base Code taken from **github:** [makersquare/Week-2-BE-Eval](https://github.com/makersquare/Week-2-BE-Eval) and improved by me.

Testing with RSpec.

<br>

**To test:**

1. Open Terminal
2. Write: 
				
		bundle exec rspec spec/tennis_spec.rb
4. Done


--------------------------

###Tennis::Game
####.initialize
&nbsp;&nbsp;&nbsp;creates two players

&nbsp;&nbsp;&nbsp;sets the opponent for each player
#### #wins_ball
&nbsp;&nbsp;&nbsp;increments the points of the winning player
#### #score_report
######when none of the player has scored any points
&nbsp;&nbsp;&nbsp;returns 'love' for both players
######when one of the players has score one point
&nbsp;&nbsp;&nbsp;returns 'fifteen' for the scoring player and 'love' for the looser
######when both players have the same score
&nbsp;&nbsp;&nbsp;returns deuce
######when a player has enough points to win, but not two more than the opponent
&nbsp;&nbsp;&nbsp;returns ad-in
######when an opponent has enough points to win, but not two more than the player
&nbsp;&nbsp;&nbsp;returns ad-out
######when the player has enough points to win and two more than the opponent
&nbsp;&nbsp;&nbsp;declares the server as the winner
######when the opponent has enough points to win and two more than the player
&nbsp;&nbsp;&nbsp;declares the receiver as the winner

<br>
###Tennis::Player
####.initialize
&nbsp;&nbsp;&nbsp;sets the points to 0
#### #record_won_ball!
&nbsp;&nbsp;&nbsp;increments the points
#### #score
######when points is 0
&nbsp;&nbsp;&nbsp;returns love
######when points is 1
&nbsp;&nbsp;&nbsp;returns fifteen
######when points is 2
&nbsp;&nbsp;&nbsp;returns thirty
######when points is 3
&nbsp;&nbsp;&nbsp;returns forty
######when a player reaches 4 points and the other has less than 3
&nbsp;&nbsp;&nbsp;declares a winner and ends the game
######when the player is ahead in the game
&nbsp;&nbsp;&nbsp;returns Ad-in
######when the opponent is ahead in the game
&nbsp;&nbsp;&nbsp;returns Ad-out
######when both players have the same score
&nbsp;&nbsp;&nbsp;returns deuce

<br>
Finished in 0.00856 seconds (files took 0.84986 seconds to load)

**20 examples, 0 failures**