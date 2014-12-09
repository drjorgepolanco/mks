require 'spec_helper'

describe 'CarStats' do
	before do
		@cars = []
		3.times { @cars << Car.new('black') }
		5.times { @cars << Car.new('red') }
		2.times { @cars << Car.new('white') }
	end

	it 'calculates the most popular car color' do
		most_popular = CarStats.most_popular_color(@cars)
		expect(most_popular).to eq('red')
	end

	it 'calculates the least popular car color' do
		least_popular = CarStats.least_popular_color(@cars)
		expect(least_popular).to eq('white')
	end
end