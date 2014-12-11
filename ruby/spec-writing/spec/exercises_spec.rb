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

describe 'Exercise 6' do
	context 'when the last item of array is panda' do
		it "modifies the last item of the array to become 'GODZILLA'" do
			array_panda = ['kwik', 'ruby', 'x', 'panda']
			result = Exercises.ex6(array_panda)
			expect(result).to eq('GODZILLA')
		end
	end

	context 'when the last item of array is not panda' do
		it "updates last item of the array to become 'panda'" do
			array_no_panda = ['rails', 'matz', 'rspec', 'sinatra']
			result = Exercises.ex6(array_no_panda)
			expect(result).to eq('panda')
		end
	end
end

describe 'Exercise 7' do
	it "adds the string 'str' to array if it exists in the array" do
		array_str = ['s', 24, 'cacao', 'sully', 'str', 1, 'lucky', 35]
		str = 'str'
		result = Exercises.ex7(array_str, str)
		expect(result[-1]).to eq(str)
	end
end

describe 'Exercise 8' do
	before { $stdout = StringIO.new }
	after(:all) { $stdout = STDOUT }

	it "iterates through a hash and prints out key and value" do
		people = [{name: 'Bob', occupation: 'Builder'}]
		result = Exercises.ex8(people)
		expect($stdout.string).to match('The Builder is Bob\n')
	end
end

describe 'Exercise 9' do
	context 'when the given time is in a leap year' do
		it 'returns true' do
			expect(Time).to receive(:now).and_return(Time.new(2012))
			result = Exercises.ex9(Time.now)
			expect(result).to eq(true)
		end
	end

	context 'when the given time is not a leap year' do
		it 'returns false' do
			expect(Time).to receive(:now).and_return(Time.new(2014))
			result = Exercises.ex9(Time.now)
			expect(result).to eq(false)
		end
	end
end

describe 'Exercise 10' do
	context "when it's happy hour (between 4 and 6 pm)" do
		it "returns true" do
			time = Time.now
			expect(Time).to receive(:now).and_return(Time.parse("16:30"))
			result = Exercises.ex10(time)
			expect(result).to eq(true)
		end
	end

	context "when is it not happy hour (anythime outside 4 and 6 pm" do
		it "returns false" do
			time = Time.now
			expect(Time).to receive(:now).and_return(Time.parse("18:30"))
			result = Exercises.ex10(time)
			expect(result).to eq(false)
		end
	end
end

describe 'Exercise 11' do
	context "when two numbers are integers" do
		it "returns the sum of both numbers" do
			result = Exercises.ex11(23, 14)
			expect(result).to eq(37)
		end
	end

	context "when one or both numbers are not integers" do
		it "raises an error" do
			expect{ Exercises.ex11(23.0, 14) }.to raise_error
		end
	end
end

describe 'Exercise 12' do
	it 'returns an ordered array of characters needed to fill range between 2 other characters' do
		result = Exercises.ex12('j','p')
		array = ['j', 'k', 'l', 'm', 'n', 'o', 'p']
		expect(result).to eq(array)
	end
end