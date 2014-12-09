require 'spec_helper'

describe 'Car' do
	before do
		@car = Car.new('black')
	end

	it 'initializes with a color' do
		expect(@car.color).to eq('black')
	end
end