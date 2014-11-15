#Bowling App

by [Jorge Polanco](http://www.drjorgepolanco.com/).

Code Kata from: [Coding Dojo](http://codingdojo.org/).

**To test:**

1. Open Terminal
2. Write: 
				
		bundle exec rspec spec/bowling_spec.rb
4. Done


--------------------------

BowlingGame

###.initialize
  
&nbsp;&nbsp;&nbsp;sets @rolls to an empty array
    
### #score
  
#####when only gutter balls are thrown
&nbsp;&nbsp;&nbsp;scores the game as 0
####when one pin is knocked down on each roll
&nbsp;&nbsp;&nbsp;scores the game as 20
####when a spare is thrown
&nbsp;&nbsp;&nbsp;records the frame score as 10 plus the number of pins knocked in the next roll
####when a strike is thrown
&nbsp;&nbsp;&nbsp;records the frame score as 10 plus the total number of pins knocked down in the next two rolls

<br>
Finished in 0.00326 seconds

**5 examples, 0 failure**

[Finished in 4.2s]