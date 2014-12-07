require 'rspec'
require_relative '../person.rb'

describe Person do
	describe "#initialize" do
		it "creates a person with money" do
			p = Person.new(500)
			expect(p.money).to eq(500)
		end
	end
end