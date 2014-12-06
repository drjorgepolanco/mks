state = {
	:rhode_island => {
		:name => "Rhode Island",
		:abbreviation => "RI",
		:population => 1050292,
		:denonym => "Rhode Islander",
		:capital => "Providence",
		:most_populous_cities => ["Warwick", "Cranston"],
		:median_income => "$54,619",
		:governor => "Lincoln Chafee",
		:counties => ["Bristol", "Kent", "Newport", "Providence", "Washington"]
	}
}

puts state[:rhode_island][:counties][2]
#=> Newport