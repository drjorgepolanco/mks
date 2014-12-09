require 'spec_helper'

describe 'CarStats' do
	before do
		@cars = []
		3.times { @cars << Cars.new('black') }
		5.times { @cars << Cars.new('red') }
		2.times { @cars << Cars.new('white') }
	end

	it 'calculates the most popular car color' do
		pop_color = CarStats.calc_top_color(@cars)
		expect(pop_color).to eq('silver')
	end
end