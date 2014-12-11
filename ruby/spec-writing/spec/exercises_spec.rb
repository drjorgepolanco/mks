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

describe 'Array' do
	let(:array) {['a', 'b', 'c', 'd']}
	let(:array_num) {[1, 2, 3, 4]}
	
	describe 'Exercise 1' do
		it 'returns the number of elements in an array' do
			result = Exercises.ex1(array)
			expect(result).to eq(4)
		end
	end

	describe 'Exercise 2' do
		it 'returns the second element of an array' do
			result = Exercises.ex2(array)
			expect(result).to eq('b')
		end
	end

	describe 'Exercise 3' do
		it 'returns the sum of the given array of numbers' do
			result = Exercises.ex3(array_num)
			expect(result).to eq(10)
		end
	end
end

