module Pizza

	class Pie
		attr_accessor :toppings, :delivery_time

		def initialize(toppings = [Pizza::Topping.new('tomato & cheese', vegetarian: true)])
			@toppings = toppings
		end

		def vegetarian?
			@toppings.all? {|topping| topping.vegetarian}
		end

		def add_topping(topping)
			@toppings.push(topping)
		end

		def deliver!(now = Time.now)
			@delivery_time = now + (30 * 60)
		end

	end

	class Topping
		attr_accessor :name, :vegetarian

		def initialize(name, vegetarian: false)
			@name = name
			@vegetarian = vegetarian
		end
	end

end
