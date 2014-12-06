@recipes = {
	"apple salad" => {
		"serving" => 4,
		"ingredients" => ["6 oz mixed greens", "1 tbs honey mustard", "2 tbs almonds", "4 apples", "salt and pepper"]
	},
	"bean burgers" => {
		"serving" => 4,
		"ingredients" => ["2 lbs black beans", "4 buns", "lettuce", "8 tomatoes, slice thinly", "1 cup feta cheese", "mustard"]
	},
	"avocado soup" => {
		"serving" => 2,
		"ingredients" => ["1 avocado", "1 soup", "cookies"]
	}
}


@recipes["apple salad"]
#=> {"serving"=>4, "ingredients"=>["6 oz mixed greens", "1 tbs honey mustard", "2 tbs almonds", "4 apples", "salt and pepper"]}

@recipes["apple salad"]["ingredients"]
#=> ["6 oz mixed greens", "1 tbs honey mustard", "2 tbs almonds", "4 apples", "salt and pepper"]

@recipes["apple salad"]["ingredients"].sort
#=> ["1 tbs honey mustard", "2 tbs almonds", "4 apples", "6 oz mixed greens", "salt and pepper"]

@recipes.each {|k, v| puts k }
#=>
# apple salad
# bean burgers
# avocado soup


@all_ingredients = @recipes.each do |k, v|
	ingredient = @recipes[k]["ingredients"].each do |k, v|
		v
	end
	puts ingredient.sort!
end
#=>
# 1 tbs honey mustard
# 2 tbs almonds
# 4 apples
# 6 oz mixed greens
# salt and pepper
# 1 cup feta cheese
# 2 lbs black beans
# 4 buns
# 8 tomatoes, slice thinly
# lettuce
# mustard
# 1 avocado
# 1 soup
# cookies
