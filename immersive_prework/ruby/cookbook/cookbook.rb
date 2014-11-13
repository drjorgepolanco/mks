class Cookbook
	attr_accessor :title
	attr_reader :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(recipe)
		@recipes << recipe
		puts "Added a recipe to the collection: #{recipe.title}"
	end

	def recipe_titles
		@recipes.each do |item| 
			puts item.title
		end
	end

	def recipe_ingredients
		@recipes.each {|item| puts item.ingredients}
	end
end

class Recipe
	attr_accessor :title
	attr_accessor :ingredients
	attr_accessor :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end
