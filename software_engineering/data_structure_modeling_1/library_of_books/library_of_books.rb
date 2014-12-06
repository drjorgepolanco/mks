books = {
	:gourd_of_flies => {
		:name => "Gourd of the Flies",
		:author => "J. W. Gourding"
	},
	:design_patterns => {
		:name => "Design Patterns",
		:author => ["John Vlissides", "Richard Helm", "Ralph Johnson", "Erich Gamma"]
	},
	:enterprise_app_architecture => {
		:name => "Patterns of Enterprise Application Architecture",
		:author => "Martin Fowler"
	},
	:domain_driven_design => {
		:name => "Domain Driven Design",
		:author => "Eric Evans"
	}
}

puts books[:gourd_of_flies][:author]
#=> J. W. Gourding

puts books[:enterprise_app_architecture][:name]
#=> Patterns of Enterprise Application Architecture



# ARRAY OF HASHES VERSION
# ***********************

# books = [
# 	{:name => "Gourd of the Flies", :author => "J. W. Gourding"},
# 	{:name => "Design Patterns", :author => ["John Vlissides", "Richard Helm", "Ralph Johnson", "Erich Gamma"]},
# 	{:name => "Domain Driven Design", :author => "Eric Evans"}
# ]