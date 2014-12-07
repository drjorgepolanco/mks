require_relative 'library_of_books_1'

@library = {}

@books.each do |k, v|
	@library[v[:title]] = v[:author]
end

puts "The books we currently have in stock are:"
puts @library.keys
puts "We currently have books of the following authors:"
puts @library.values