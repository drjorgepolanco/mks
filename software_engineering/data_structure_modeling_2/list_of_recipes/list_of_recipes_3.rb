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

	def show_ingredients
		puts "The #{@name} has the following ingredients:"
		@ingredients.each do |ingredient|
			puts "- #{ingredient.name}"
		end
	end
end

# CREATE INGREDIENTS
# ******************

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
feta = Ingredient.new("Feta Cheese", "cup", 1)
mustard = Ingredient.new("Mustard")
avocado = Ingredient.new("Avocado", "unit", 1)
soup = Ingredient.new("Soup")
cookies = Ingredient.new("Cookies")


# CREATE RECIPES
# **************

apple_salad = Recipe.new("Apple Salad", 4)
beans_burger = Recipe.new("Beans Burger", 4)
avocado_soup = Recipe.new("Avocado Soup", 2)


# ADD INGREDIENTS TO RECIPES
# **************************

apple_salad.add_ingredient(mixed_greens)
apple_salad.add_ingredient(honey_mustard)
apple_salad.add_ingredient(almonds)
apple_salad.add_ingredient(apples)
apple_salad.add_ingredient(salt)
apple_salad.add_ingredient(pepper)

beans_burger.add_ingredient(black_beans)
beans_burger.add_ingredient(buns)
beans_burger.add_ingredient(lettuce)
beans_burger.add_ingredient(tomatoes)
beans_burger.add_ingredient(feta)
beans_burger.add_ingredient(mustard)

avocado_soup.add_ingredient(avocado)
avocado_soup.add_ingredient(soup)
avocado_soup.add_ingredient(cookies)


# DISPLAY INGREDIENTS
# *******************
apple_salad.show_ingredients
beans_burger.show_ingredients
avocado_soup.show_ingredients