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
		@@cars_per_color.each do |key, value|
			puts "#{key}: #{value}"
		end
	end

	def self.most_popular_color
		most_popular = @@cars_per_color.values.max
		keys = @@cars_per_color.select {|key, value| value == most_popular}.keys
	end

	def initialize(color = "white")
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

	def add_car_color
		if @@cars_per_color.has_key?(@color) 
			@@cars_per_color[@color] += 1
		else
			@@cars_per_color[@color] = 1
		end
	end

	def remove_car_color
		if @@cars_per_color.has_key?(@color) 
			@@cars_per_color[@color] -= 1
		end
	end

	def color=(new_color)
		remove_car_color 
		@color = new_color
		add_car_color	
	end
end

class Convertible < Car
	attr_accessor :roof_status

	def initialize(color = "red", convertible = true)
		super(color)
		@convertible = convertible
		@roof_status = "closed"
	end

	def top_down
		if @roof_status == "closed"
			@roof_status = "open"
			puts "Now opening the roof"
		else
			puts "The roof was already open"
		end
	end

	def top_down
		if @roof_status == "open"
			@roof_status = "closed"
			puts "Now closing the roof"
		else
			puts "The roof was already closed"
		end
	end
end

