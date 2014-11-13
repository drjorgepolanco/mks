require_relative 'cookbook'

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
burrito_veggie = Recipe.new("Veggie Burrito", ["tortilla", "veggies", "salt"], ["heat veggies", "place veggies in tortilla", "put salt", "roll up"])

puts mex_cuisine.title
# puts burrito.title
# p burrito.ingredients 
# p burrito.steps 

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title 

# burrito.title = "Veggie Burrito"
# burrito.ingredients = ["tortilla", "tomatoes"]
# burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

# p burrito.title 
# p burrito.ingredients 


# mex_cuisine.recipes 
mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(burrito_veggie)
# puts mex_cuisine.recipes

# mex_cuisine.recipe_titles
# mex_cuisine.recipe_ingredients 
# mex_cuisine.recipe_steps

burrito.print_recipe
burrito_veggie.print_recipe