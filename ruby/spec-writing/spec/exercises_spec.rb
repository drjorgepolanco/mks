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
	let(:array) 		{['a', 'b', 'c', 'd']}
	let(:array_num) {[1, 2, 3, 4, 1, 9, 2, 27, 8]}
	
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
			expect(result).to eq(57)
		end
	end

	describe 'Exercise 4' do
		it 'returns the max number of the given array' do
			result = Exercises.ex4(array_num)
			expect(result).to eq(27)
		end
	end

	describe 'Exercise 5' do
		it 'puts every element of the array' do
			expect(STDOUT).to receive(:puts).and_return('a')
			expect(STDOUT).to receive(:puts).and_return('b')
			expect(STDOUT).to receive(:puts).and_return('c')
			expect(STDOUT).to receive(:puts).and_return('d')
			Exercises.ex5(array)
		end
	end
end

