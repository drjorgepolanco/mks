class BowlingGame
	attr_accessor :rolls

	def initialize
		@rolls = []
	end

	def roll(pins)
		@rolls << pins
	end

	def score
		# reduce: sum the elements of an array
		# @rolls.reduce(:+)

		total_score = 0
		current_roll = 0

		while current_roll < @rolls.size
			roll 			= @rolls[current_roll]
			next_roll = @rolls[current_roll + 1]

			if roll == 10
				total_score += 10 + next_roll + @rolls[current_roll + 2]
				current_roll += 1
			elsif roll + next_roll == 10
				total_score += 10 + @rolls[current_roll + 2]
				current_roll += 2
			else
				total_score += roll + next_roll
				current_roll += 2
			end
		end

		return total_score
	end
end

# Bowling is 10 frames long, and normally you get two rolls for each frame, 
# or 20 total per game (unless you get strikes or spares).

# Spare: the score for the frame is 10 plus the number of pins knocked down on the next roll.

# Strike: score for the frame is ten plus the simple total of the pins knocked down in the next two rolls.