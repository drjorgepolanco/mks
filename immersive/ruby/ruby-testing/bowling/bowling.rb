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
		@rolls.reduce(:+)
	end
end