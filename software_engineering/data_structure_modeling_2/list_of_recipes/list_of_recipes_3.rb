class Ingredient
	attr_accessor :name, :measurement, :amount

	def initialize(name, measurement="portion", amount=1)
		@name = name
		@measurement = measurement
		@amount = amount
	end
end

class Recipe
	attr_accessor :name, :serving

	def initialize(name, serving)
		@name = name
		@serving = serving
		@ingredients = []
	end

	def add_ingredient(ingredient)
		@ingredients << ingredient
	end
end


mixed_greens = Ingredient.new("Mixed Greens", "oz", 6)
honey_mustard = Ingredient.new("Honey Mustard", "tbs", 1)
almonds = Ingredient.new("Almonds", "tbs", 2)
apples = Ingredient.new("Apples", "unit", 4)
salt = Ingredient.new("Salt")
pepper = Ingredient.new("Pepper")

black_beans = Ingredient.new("Black Beans", "lbs", 2)
buns = Ingredient.new("Buns", "unit", 4)
lettuce = Ingredient.new("Lettuce")
tomatoes = Ingredient.new("Tomatoes", "unit", 8)