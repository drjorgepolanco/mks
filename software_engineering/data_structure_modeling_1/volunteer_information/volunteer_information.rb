org = {
	:name => "DoGood",
	:volunteer => {
		:name => "Alice",
		:age => "25",
		:phone => "555-555-5555"
	},
	:position => "event receptionist"
}

puts "#{org[:volunteer][:name]} wants to be an #{org[:position]} in \"#{org[:name]}\"."
#=> Alice wants to be an event receptionist in "DoGood".