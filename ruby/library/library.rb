class Book
	attr_accessor :title, :author, :status, :id, :borrower

	def initialize(title, author, status='available', id=nil, borrower=nil)
		@title = title
		@author = author
		@status = status
		@id = id
		@borrower = borrower
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

class Library < Book
	attr_accessor :books, :books_borrowed

	def initialize
		@books = []
		@books_borrowed = []
	end

	def register_new_book(title, author)
		new_book = Book.new(title, author)
		@books << new_book
		new_book.id = @books.length - 1
	end

	def check_out_book(book_id, borrower)
		if @books_borrowed.length < 2
			if @books[book_id].status == 'available'
				@books[book_id].status = 'checked_out'
				@books[book_id].borrower = borrower
				@books_borrowed << borrower
				@books[book_id]
			end
		end
	end

	def get_borrower(book_id)
		@books[book_id].borrower.name
	end

	def check_in_book(book)
		if book.status == 'checked_out'
			book.status = 'available'
			true
		else
			puts "The book is already available"
			false
		end
	end

	def available_books
		@books.select do |book|
			if book.status == 'available'
				book
			end
		end
	end

	def borrowed_books
		@books.select do |book|
			if book.status == 'checked_out'
				book
			end
		end
	end
end