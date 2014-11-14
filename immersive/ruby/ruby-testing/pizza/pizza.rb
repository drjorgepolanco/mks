module Pizza
	class Pie
	end

	class Topping
		attr_accessor :name, :vegetarian

		def initialize(name, vegetarian=false)
			@name = name
		end
	end
end
