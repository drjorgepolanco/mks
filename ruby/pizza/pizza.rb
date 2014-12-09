class Pizza
	attr_accessor :toppings

	def initialize(toppings=[Topping.new('cheese', vegetarian: true)])
		@toppings = toppings
	end

	def vegetarian?
		@toppings.all? do |topping| 
			topping.vegetarian == true
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