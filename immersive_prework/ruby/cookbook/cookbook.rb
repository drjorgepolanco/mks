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
		puts "================================================================="
		puts "The available recipes in the #{@title} Book are: "
		@recipes.each do |item| 
			puts item.title
		end
	end

	def recipe_ingredients
		puts "================================================================="
		puts "The ingredients of this recipe are: "
		@recipes.each do |item| 
			puts "-----------------"
			puts item.title.upcase
			puts item.ingredients
		end
	end

	def recipe_steps
		puts "================================================================="
		puts "To make this recipe, you need to: "
		@recipes.each do |item| 
			puts "-----------------"
			puts item.title.upcase
			puts item.steps
		end
	end

	def print_cookbook
		puts "================================================================="
		puts "The #{@title} cookbook has the following recipes:"
		@recipes.each do |item|
			puts ""
			puts item.title.upcase
			puts "The ingredients of this recipe are:"
			puts item.ingredients
			puts "To make this recipe you need to:"
			puts item.steps
		end
	end
end

class Recipe
	attr_accessor :title, :ingredients, :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def print_recipe
		puts "================================================================="
		puts "Title:"
		puts "******"
		puts @title.upcase
		puts ""
		puts "Ingredients:"
		puts "************"
		puts @ingredients
		puts ""
		puts "Steps:"
		puts "******"
		# puts @steps
		steps_hash = Hash[@steps.map.with_index.to_a]
		steps_hash.each {|key, value| puts "#{value + 1}. #{key.capitalize}"}
	end

end
