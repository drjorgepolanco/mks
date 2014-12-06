module Meal
	def favorite(appetizer, entree, dessert)
		if vegetarian == false
			puts "#{@name}'s favorite meal is #{appetizer} for appetizer, #{entree} for entree and #{dessert} for dessert."
		else
			puts "#{@name}'s favorite meal, who is vegetarian is #{appetizer} for appetizer, #{entree} for entree and #{dessert} for dessert."
		end
	end
end


class Person
	include Meal
	attr_accessor :name, :vegetarian

	def initialize(name, vegetarian=false)
		@name = name
		@vegetarian = vegetarian
	end
end

class Nick < Person
	def initialize(name)
		super(name)
	end

	def favorite_restaurant(name, location, health_score)
		puts "#{@name}'s favorite restaurant is #{name}."
		puts "It is located in: #{location}."
		puts "It has a health score of #{health_score}!"
	end
end

class Kate < Person
	def initialize(name)
		super(name)
	end
end

class Harsh < Person
	def initialize(name, vegetarian)
		super(name, vegetarian)
	end
end

harsh = Harsh.new("Harsh", true)
kate = Kate.new("Kate")
nick = Nick.new("Nick")

puts "Harsh doesn't like meat." if harsh.vegetarian == true
#=> Harsh doesn't like meat.

puts harsh.name
#=> Harsh

harsh.favorite("garlic knots", "spaghetti & eggplant", "cheesecake")
#=> Harsh's favorite meal, who is vegetarian is garlic knots for appetizer, spaghetti & eggplant for entree and cheesecake for dessert.

kate.favorite("calzone", "slice of pizza", "cannoli")
#=> Kate's favorite meal is calzone for appetizer, slice of pizza for entree and cannoli for dessert.

nick.favorite("mozarella sticks", "chicken parmigiana", "tiramisu")
#=> Nick's favorite meal is mozarella sticks for appetizer, chicken parmigiana for entree and tiramisu for dessert.

puts nick.vegetarian
#=> false

nick.favorite_restaurant("Patrick's Pizza Palace", "716 Congress Ave", 100)
#=>
# Nick's favorite restaurant is Patrick's Pizza Palace.
# It is located in: 716 Congress Ave.
# It has a health score of 100!