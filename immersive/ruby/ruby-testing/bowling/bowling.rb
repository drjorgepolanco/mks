class BowlingGame
	attr_accessor :rolls

	def initialize
		@rolls = []
		@total_score = 0
		@current_roll = 0
	end

	def roll(pins)
		@rolls << pins
	end

	def score
		while @current_roll < @rolls.size
			init_roll

			if strike?
				score_strike
			elsif spare?
				score_spare
			else
				@total_score += @roll + @next_roll
				@current_roll += 2
			end
		end

		return @total_score
	end

	private

	def init_roll
		@roll 			= @rolls[@current_roll]
		@next_roll 	= @rolls[@current_roll + 1]
	end

	def strike?
		@roll == 10
	end

	def score_strike
		@total_score += 10 + @next_roll + @rolls[@current_roll + 2]
		@current_roll += 1
	end

	def spare?
		@roll + @next_roll == 10
	end

	def score_spare
		@total_score += 10 + @rolls[@current_roll + 2]
		@current_roll += 2
	end


end

# Bowling is 10 frames long, and normally you get two rolls for each frame, 
# or 20 total per game (unless you get strikes or spares).

# Spare: the score for the frame is 10 plus the number of pins knocked down on the next roll.

# Strike: score for the frame is ten plus the simple total of the pins knocked down in the next two rolls.