@recipes = {
	:apple_salad => {
		"name" => "Apple Salad",
		"serving" => 4,
		"ingredients" 	=> {
			:greens 		=> {"name" => "Mixed Greens", 	"measurement" => "oz", 			  "amount" => 6},
			:mustard 		=> {"name" => "Honey Mustard", 	"measurement" => "tbs", 			"amount" => 1},
			:almonds 		=> {"name" => "Almonds", 				"measurement" => "tbs", 			"amount" => 2},
			:apples 		=> {"name" => "Apples", 				"measurement" => "unit", 		  "amount" => 4},
			:salt 			=> {"name" => "Salt", 					"measurement" => "portion", 	"amount" => 1},
			:pepper 		=> {"name" => "Pepper", 				"measurement" => "portion", 	"amount" => 1}
		}
	},
	:bean_burgers => {
		"name" => "Bean Burgers",
		"serving" => 4,
		"ingredients" 	=> {
			:beans 			=> {"name" => "Black Beans", 		"measurement" => "lbs", 			"amount" => 2},
			:buns 			=> {"name" => "Buns", 					"measurement" => "unit", 		  "amount" => 4},
			:lettuce 		=> {"name" => "Lettuce", 				"measurement" => "unit",		 	"amount" => 1},
			:tomatoes 	=> {"name" => "Tomatoes", 			"measurement" => "unit", 			"amount" => 8, "form" => "sliced thinly"},
			:feta 			=> {"name" => "Feta Cheese",		"measurement" => "cup",				"amount" => 1},
			:mustard 		=> {"name" => "Mustard",				"measurement" => "portion",		"amount" => 1}
		}
	},
	:avocado_soup => {
		"name" => "Avocado Soup",
		"serving" => 2,
		"ingredients" 	=> {
			:avocado 		=> {"name" => "Avocado",				"measurement" => "unit",			"amount" => 1},
			:soup 			=> {"name" => "Soup",						"measurement" => "portion",		"amount" => 3},
			:cookies 		=> {"name" => "Cookies",				"measurement" => "unit",			"amount" => 2}
		}
	}
}

# ================================================

puts "We currently have the following recipes:"
@all_recipes = @recipes.each do |key, value|
	puts "- #{value["name"]}"
end

@all_recipes
#=>
# We currently have the following recipes:
# - Apple Salad
# - Bean Burgers
# - Avocado Soup


# ================================================

puts "The #{@recipes[:apple_salad]["name"]} has the following ingredients:"
@apple_salad_ingredients = @recipes[:apple_salad]["ingredients"].each do |key, value|
	puts "- #{value["name"]}"
end

@apple_salad_ingredients 
#=>
# The Apple Salad has the following ingredients:
# - Mixed Greens
# - Honey Mustard
# - Almonds
# - Apples
# - Salt
# - Pepper


# ================================================

puts "The Bean Burger has the following ingredients:"
@bean_burger_ingredients = @recipes[:bean_burgers]["ingredients"].each do |key, value|
	puts "- #{value["name"]}"
end

@bean_burger_ingredients
#=>
# The Bean Burger has the following ingredients:
# - Black Beans
# - Buns
# - Lettuce
# - Tomatoes
# - Feta Cheese
# - Mustard


# ================================================

puts "The Avocado Soup has the following ingredients:"
@avocado_soup_ingredients = @recipes[:avocado_soup]["ingredients"].each do |key, value|
	puts "- #{value["name"]}"
end

@avocado_soup_ingredients
#=>
# The Avocado Soup has the following ingredients:
# - Avocado
# - Soup
# - Cookies


# ================================================

puts "The ingredients we currently have in stock are:"
@all_ingredients = @recipes.each do |key, value|
	ingredients = @recipes[key]["ingredients"].each do |key, value|
		puts "- #{value["amount"]} #{value["measurement"]} of #{value["name"]}"
	end
	ingredients
end
#=>
# The ingredients we currently have in stock are:
# - 6 oz of Mixed Greens
# - 1 tbs of Honey Mustard
# - 2 tbs of Almonds
# - 4 unit of Apples
# - 1 portion of Salt
# - 1 portion of Pepper
# - 2 lbs of Black Beans
# - 4 unit of Buns
# - 1 unit of Lettuce
# - 8 unit of Tomatoes
# - 1 cup of Feta Cheese
# - 1 portion of Mustard
# - 1 unit of Avocado
# - 1 portion of Soup
# - 1 unit of Cookies


# ================================================

puts "The ingredients we currently have in stock, sorted by amount are:"
@all_ingredients = @recipes.each do |key, value|
	@ingredients = @recipes[key]["ingredients"].sort_by do |key, value|
		value["amount"]
	end
	puts @ingredients
end
#=>
# The ingredients we currently have in stock are:
# pepper
# {"name"=>"Pepper", "measurement"=>"portion", "amount"=>1}
# mustard
# {"name"=>"Honey Mustard", "measurement"=>"tbs", "amount"=>1}
# salt
# {"name"=>"Salt", "measurement"=>"portion", "amount"=>1}
# almonds
# {"name"=>"Almonds", "measurement"=>"tbs", "amount"=>2}
# apples
# {"name"=>"Apples", "measurement"=>"unit", "amount"=>4}
# greens
# {"name"=>"Mixed Greens", "measurement"=>"oz", "amount"=>6}

# mustard
# {"name"=>"Mustard", "measurement"=>"portion", "amount"=>1}
# feta
# {"name"=>"Feta Cheese", "measurement"=>"cup", "amount"=>1}
# lettuce
# {"name"=>"Lettuce", "measurement"=>"unit", "amount"=>1}
# beans
# {"name"=>"Black Beans", "measurement"=>"lbs", "amount"=>2}
# buns
# {"name"=>"Buns", "measurement"=>"unit", "amount"=>4}
# tomatoes
# {"name"=>"Tomatoes", "measurement"=>"unit", "amount"=>8, "form"=>"sliced thinly"}

# avocado
# {"name"=>"Avocado", "measurement"=>"unit", "amount"=>1}
# cookies
# {"name"=>"Cookies", "measurement"=>"unit", "amount"=>2}
# soup
# {"name"=>"Soup", "measurement"=>"portion", "amount"=>3}