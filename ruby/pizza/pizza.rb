class Pizza
	attr_reader :toppings
	attr_accessor :delivery_time

	def initialize(toppings=[Topping.new('cheese', vegetarian: true)])
		@toppings = toppings
	end

	def vegetarian?
		@toppings.all? do |topping| 
			topping.vegetarian == true
		end
	end

	def add_topping(topping)
		@toppings << topping
	end

	def deliver!
		@delivery_time = Time.now + 30 * 60
	end

	def late?
		if Time.now - @delivery_time > 30 * 60
			true
		else
			puts "Your pizza will be coming soon!"
			false
		end
	end
end

class Topping
	attr_accessor :name, :vegetarian

	def initialize(name, vegetarian: false)
		@name = name
		@vegetarian = vegetarian
	end
end