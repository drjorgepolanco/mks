class Car
	@@total_car_count = 0
	@@cars_per_color = {}
	attr_accessor :color

	def self.total_car_count
		@@total_car_count
	end

	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def self.show_cars
		@@cars_per_color
	end

	def initialize(color)
		@@total_car_count += 1
		@fuel = 10
		@distance = 0
		@color = color
		if @@cars_per_color[color] == nil
			@@cars_per_color[color] = 1
		else
			@@cars_per_color[color] += 1
		end
	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end

end
