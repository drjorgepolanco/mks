require './bowling'

describe BowlingGame do
	it "exists" do
		expect(BowlingGame).to be_a(Class)
	end

	describe ".initialize" do
		it "sets @rolls to an empty array" do
			game = BowlingGame.new

			expect(game.rolls).to eq([])
		end
	end

	describe "#score" do
		it "scores the game as 0 when only gutter balls are thrown" do
			game = Game.new
			20.times {game.roll(0)}

			expect(game.score).to eq(0)
		end
	end
end