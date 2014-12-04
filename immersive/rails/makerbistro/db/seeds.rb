# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
taco = MenuItem.create(name: "Fish Taco", price: "$3.50", image: "http://casanovafishtacos.com/wp-content/uploads/2012/10/newtaco-1024x577.jpg")
lasagna = MenuItem.create(name: "Lasagna", price: "$5.00", image: "http://upload.wikimedia.org/wikipedia/commons/6/6b/Lasagna_(1).jpg")
pork_chops = MenuItem.create(name: "Pork Chops", price: "$4.50", image: "http://www.vodkitchen.com/wp-content/uploads/2010/12/D72_5595.jpg")
chow_fan = MenuItem.create(name: "Chow Fan", price: "$2.50", image: "http://3.bp.blogspot.com/_WJjc0N1hIH4/TP1hdJZnqeI/AAAAAAAAOBE/37uM7UdYxFk/s1600/ham%2Byu%2Bkai%2Blap%2Bchow%2Bfan.JPG")
eggplant_parmigiana = MenuItem.create(name: "Eggplant Parmigiana", price: "$6.00", image: "http://angsarap.net/wp-content/uploads/2012/03/eggplant-parmigiana.jpg")

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
pork = Ingredient.create(name: "Pork")
lime = Ingredient.create(name: "Lime")
pepper = Ingredient.create(name: "Pepper")

taco.recipes.create(ingredient: tortilla)
taco.recipes.create(ingredient: mako)
taco.recipes.create(ingredient: salt)
taco.recipes.create(ingredient: pepper)

lasagna.recipes.create(ingredient: pasta)
lasagna.recipes.create(ingredient: ground_beef)
lasagna.recipes.create(ingredient: salt)
lasagna.recipes.create(ingredient: tomato_sauce)

pork_chops.recipes.create(ingredient: pork)
pork_chops.recipes.create(ingredient: salt)
pork_chops.recipes.create(ingredient: lime)
pork_chops.recipes.create(ingredient: basil)
pork_chops.recipes.create(ingredient: pepper)

chow_fan.recipes.create(ingredient: rice)
chow_fan.recipes.create(ingredient: eggs)
chow_fan.recipes.create(ingredient: salt)

eggplant_parmigiana.recipes.create(ingredient: eggs)
eggplant_parmigiana.recipes.create(ingredient: eggplant)
eggplant_parmigiana.recipes.create(ingredient: parmesan)
eggplant_parmigiana.recipes.create(ingredient: salt)
eggplant_parmigiana.recipes.create(ingredient: basil)