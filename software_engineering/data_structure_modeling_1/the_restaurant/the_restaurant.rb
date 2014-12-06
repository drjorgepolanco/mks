nick = {
	:name => "Nick",
	:favorite_restaurant => {
		:name => "Patrick's Pizza Palace",
		:address => "716 Congress Ave",
		:health_score => 100
	},
	:favorite_meal => {
		:appetizer => "mozarella sticks",
		:entree => "chicken parmigiana",
		:dessert => "tiramisu"
	},
	:friends => {
		:kate => {
			:name => "Kate",
			:favorite_meal => {
				:appetizer => "calzone",
				:entree => "slice of pizza",
				:dessert => "cannoli"
			}
		},
		:harsh => {
			:name => "Harsh",
			:vegetarian => true,
			:favorite_meal => {
				:appetizer => "garlic knots",
				:entree => "spaghetti & eggplant",
				:dessert => "cheesecake"
			}
		}
	}
}

kate_meal = nick[:friends][:kate][:favorite_meal]

puts "#{nick[:name]}\'s favorite restaurant \"#{nick[:favorite_restaurant][:name]}\", has a heath score of #{nick[:favorite_restaurant][:health_score]}."
#=> Nick's favorite restaurant "Patrick's Pizza Palace", has a heath score of 100.


puts "His friend #{nick[:friends][:kate][:name]}, loves to eat:"

kate_meal.each do |key, value|
	puts "- #{value.capitalize} for #{key}."
end
#=>
# His friend Kate, loves to eat:
# - Calzone for appetizer.
# - Slice of pizza for entree.
# - Cannoli for dessert.

