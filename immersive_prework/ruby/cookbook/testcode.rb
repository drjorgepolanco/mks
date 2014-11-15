require_relative 'cookbook'

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
burrito_veggie = Recipe.new("Veggie Burrito", ["tortilla", "veggies", "salt"], ["heat veggies", "place veggies in tortilla", "put salt", "roll up"])

puts mex_cuisine.title
mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title 

mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(burrito_veggie)
mex_cuisine.recipe_titles
mex_cuisine.recipe_ingredients 
mex_cuisine.print_cookbook

burrito.print_recipe
burrito_veggie.print_recipe




