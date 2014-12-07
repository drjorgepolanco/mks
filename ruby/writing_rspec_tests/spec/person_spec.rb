require 'rspec'
require_relative '../person.rb'

describe Person do
	describe "#initialize" do
		it "creates a person with money" do
			p = Person.new(500)
			expect(p.money).to eq(500)
		end
	end

	describe "#get_paid" do
		it "adds the salary to the total money" do
			p = Person.new(500)
			p.get_paid(300)

			expect(p.money).to eq(800)
		end
	end
end