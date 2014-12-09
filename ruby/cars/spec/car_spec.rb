require 'spec_helper'

describe 'Car' do
	before do
		@car = Car.new('black')
	end

	it 'initializes with a color' do
		expect(@car.color).to eq('black')
	end

	it 'throws an error if a color is not provided on initialize' do
		expect { Car.new }. to raise_error
	end

	it 'honks' do
		expect(@car.honk).to eq('meep')
	end 

	it 'has 4 wheels by default' do
		expect(@car.wheel_count).to eq(4)
	end
end