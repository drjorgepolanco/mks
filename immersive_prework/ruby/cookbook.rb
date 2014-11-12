class Cookbook
	attr_accessor :title

	def initialize(title)
		@title = title
	end
end

class Recipe
	attr_reader :title
	attr_accessor :ingredients
	attr_writer :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end
