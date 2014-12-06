patricks_laptop = {
	brand: "Apple",
	model: "MacBook Air",
	hdd_capacity: "256GB",
	hdd_type: "Solid State Drive",
	ram: "8GB",
	screen: "Retina Display",
	processor: "Intel Core i7",
	:preloaded_software => ["iPhoto", "Safari", "iMovie", "iMessage"]
}

puts patricks_laptop[:hdd_type]
#=> Solid State Drive

puts patricks_laptop[:preloaded_software]
#=> iPhoto
#=> Safari
#=> iMovie
#=> iMessageexi