# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
taco = MenuItem.create(name: "Fish Taco", price: "$3.50", image: "http://images.nymag.com/bestofny/food/2006/mercadito_560.jpg")
lasagna = MenuItem.create(name: "Lasagna", price: "$5.00", image: "http://static.communitytable.com/wp-content/uploads/2010/12/sorvino-lasagna_jimfranco.jpg")
pork_chops = MenuItem.create(name: "Pork Chops", price: "$4.50", image: "http://www.grillingcompanion.com/wp-content/uploads/2011/11/BBQPorkChops.jpg")
chow_fan = MenuItem.create(name: "Chow Fan", price: "$2.50", image: "http://labofedibles.files.wordpress.com/2007/08/friedrice.jpg")
eggplant_parmigiana = MenuItem.create(name: "Eggplant Parmigiana", price: "$6.00", image: "http://italianfoodnaplesflorida.com/wp-content/uploads/2012/06/Eggplant-Parmigiana.jpg")

mako = Ingredient.create(name: "Mako")
rice = Ingredient.create(name: "Rice")
ground_beef = Ingredient.create(name: "Ground Beef")
basil = Ingredient.create(name: "Basil")
eggs = Ingredient.create(name: "Eggs")
parmesan = Ingredient.create(name: "Parmesan Cheese")
eggplant = Ingredient.create(name: "Eggplant")
tomato_sauce = Ingredient.create(name: "Tomato Sauce")
pasta = Ingredient.create(name: "Pasta")
salt = Ingredient.create(name: "Salt")
tortilla = Ingredient.create(name: "Tortilla")
butter = Ingredient.create(name: "Butter")


taco.recipes.create(ingredient: tortilla)
taco.recipes.create(ingredient: mako)
taco.recipes.create(ingredient: salt)

lasagna.recipes.create(ingredient: pasta)
lasagna.recipes.create(ingredient: ground_beef)
lasagna.recipes.create(ingredient: salt)
lasagna.recipes.create(ingredient: tomato_sauce)

chow_fan.recipes.create(ingredient: rice)
chow_fan.recipes.create(ingredient: eggs)
chow_fan.recipes.create(ingredient: salt)

eggplant_parmigiana.recipes.create(ingredient: eggs)
eggplant_parmigiana.recipes.create(ingredient: eggplant)
eggplant_parmigiana.recipes.create(ingredient: parmesan)
eggplant_parmigiana.recipes.create(ingredient: salt)
eggplant_parmigiana.recipes.create(ingredient: basil)