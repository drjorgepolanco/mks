require './exercises'

describe 'Exercise 0' do
	it 'triples the length of a string' do
		result = Exercises.ex0('ha')
		expect(result).to eq('hahaha')
	end

	it "returns 'nope' if the string is 'wishes'" do
		result = Exercises.ex0('whishes')
		expect(result).to eq('nope')
	end
end