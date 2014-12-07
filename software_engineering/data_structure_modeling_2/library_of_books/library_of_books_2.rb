require 'library_of_books_1'

class Library
	def initialize
		@collection = {}
	end

	def add_books(book)
		book.each do |title, author|
			@collection[title] = author
		end
	end
end

class Book
	attr_accessor :title, :author

	def initialize(title, author)
		@title = author
		@author = author
	end
end

design_patterns = Book.new(@books[:design_patterns][:title], @books[:design_patterns][:author])

puts design_patterns