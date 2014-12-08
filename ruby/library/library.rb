class Book
	attr_accessor :title, :author, :status
	attr_reader :id

	def initialize(title, author, status='available', id=nil)
		@title = title
		@author = author
		@status = status
	end

	def check_out
		if @status == 'available'
			@status = 'checked_out'
			true
		else
			puts "The book can't be checked out twice."
			false
		end
	end

	def check_in
		if @status == 'checked_out'
			@status = 'available'
			true
		else
			puts "The book is already available."
		end
	end
end

class Borrower
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

class Library
	attr_accessor :books
	
	def initialize
		@books = []
	end
end