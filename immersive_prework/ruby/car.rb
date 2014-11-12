class Car
	attr_accessor :fuel, :distance

	def initialize(fuel = 10, distance = 0)
		@fuel = fuel
		@distance = distance
		puts "Welcome to your car!"
	end

	def get_info
		puts "#{@distance} miles driven and #{@fuel} gallons of gas left."
	end

	def drive(distance = 0)
		available_distance = @fuel * 20
		puts "You have enough gas to drive #{available_distance} miles today."
		distance = puts "How many miles do you plan to drive today?"
		distance = gets.chomp.to_i
		if distance > available_distance
			puts "You won't be able to drive that much with your current tank."
			drive
		else
			$fuel_left = @fuel - (distance.to_i / 20)
			puts "Today you plan to drive for #{distance} miles."
			puts "After your trip, you will have #{$fuel_left} gallons left."
			puts "That will allow you to drive for another #{$fuel_left * 20.0} miles."
			if $fuel_left < 3
				puts "You need to fuel up!"
				gas_decision = puts "Do you want to buy gas? Please, answer with 'yes' or 'no': "
				gas_decision = gets.chomp.downcase
				if gas_decision == "yes"
					puts "Smart move!"
					puts fuel_up
				elsif gas_decision == "no"
					puts "Better safe than sorry, buddy."
				else
					puts "Unknown answer. Please try again."
					gas_decision
				end
			end
		end
	end

	def fuel_up(gallons = 0)
		fuel_top = 10 - $fuel_left
		cost = 3.50
		gallons = puts "How many gallons do you want to put today?"
		gallons = gets.chomp.to_i
		total_cost = gallons.to_i * cost
		if gallons.to_i > fuel_top
			puts "You won't be able to fit all this gas in your tank. You only need #{fuel_top} gallons."
			fuel_up
		else
			puts "The total cost of that gas will be #{total_cost} dollars."
		end
	end
end


bmw =  Car.new
