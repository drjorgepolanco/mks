class Car
	@@total_car_count = 0
	@@cars_per_color = {}
	attr_accessor :color, :fuel

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


	def self.total_car_count
		@@total_car_count
		puts "We have #{@@total_car_count} cars in stock."
	end

	def self.show_cars
		puts "We have the following cars available:"
		@@cars_per_color.each do |key, value|
			if @@cars_per_color[key] == 1
				puts "#{key}: #{value} car."
			else
				puts "#{key}: #{value} cars."
			end
		end
		puts " "
	end

	def self.most_popular_color
		most_popular = @@cars_per_color.values.max
		keys = @@cars_per_color.select {|key, value| value == most_popular}.keys
		puts "Our most popular car colors are: " + keys[0..-2].map(&:capitalize).join(", ") + " and " + keys[-1].capitalize + "." if keys.length > 1 
		puts "Our most popular car color is: " + keys[0].capitalize + "." unless keys.length > 1
		puts " "
	end

	def to_s
		"I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons gas left"
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

	def fuel_up
		gallons_needed = 10.0 - @fuel
		puts "To fill the tank you need #{gallons_needed} gallons."
		puts "That will cost you $#{3.5 * gallons_needed} dollars."
		@fuel = 10.0
		puts "You have now #{@fuel} gallons and can drive #{@fuel * 20} more miles."
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

	def top_up
		if @roof_status == "closed"
			@roof_status = "open"
			puts "Now opening the roof."
		else
			puts "The roof was already open."
		end
	end

	def top_down
		if @roof_status == "open"
			@roof_status = "closed"
			puts "Now closing the roof."
		else
			puts "The roof was already closed."
		end
	end
end

