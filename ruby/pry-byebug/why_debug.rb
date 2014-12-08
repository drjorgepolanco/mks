require 'pry-byebug'

module ArrayUtil

	def self.find_max(input)
		input.inject {|n, m| m > n ? m : n} 
	end
end

array = [5, 8, 2]
res = ArrayUtil.find_max(array)
puts "#{res} is the largest number in the array"