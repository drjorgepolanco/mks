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
end