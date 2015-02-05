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
		puts "===================================================="
		puts "The available recipes in the \"#{@title}\" Book are: "
		@recipes.each do |item| 
			puts item.title
		end
	end

def recipe_ingredients
	puts "===================================================="
	puts "The ingredients of this recipe are: "
	@recipes.each do |item| 
		puts "#{item.title.upcase}: #{item.ingredients.map(&:capitalize).join(", ")}." 
	end
end

def print_cookbook
	puts "===================================================="
	puts "The #{@title} cookbook has the following recipes:"
	@recipes.each do |item|
		puts ""
		puts item.title.upcase
		puts "---------------"
		puts " "
		puts "The ingredients of this recipe are:"
		puts item.ingredients.map {|x| puts "- " + x.capitalize}
		puts "To make this recipe you need to:"
		puts item.steps.map {|x| puts "- " + x.capitalize}
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
		puts "===================================================="
		puts "Title: #{@title.upcase}"
		puts "******"
		puts ""
		puts "Ingredients: " + @ingredients[0..-2].map(&:capitalize).join(", ") + " and " + @ingredients[-1].capitalize if ingredients.length > 1
		puts "Ingredients: " + @ingredients[0] unless ingredients.length > 1
		puts "************"
		puts ""
		puts "Steps:"
		puts "******"
		steps_hash = Hash[@steps.map.with_index.to_a]
		steps_hash.each {|key, value| puts "#{value + 1}. #{key.capitalize}"}
	end
end