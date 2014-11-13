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
		puts "The available recipes in this Book are: "
		@recipes.each do |item| 
			puts item.title
		end
	end

	def recipe_ingredients
		puts "The ingredients of this recipe are: "
		@recipes.each {|item| puts item.ingredients}
	end

	def recipe_steps
		puts "To make this recipe, you need to: "
		@recipes.each {|item| puts item.steps}
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
