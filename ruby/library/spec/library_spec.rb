require './library.rb'
require 'pry-byebug'

describe Book do
	let(:book) { Book.new("The Stranger", "Albert Camus") }
	it "has a title and author, and nil id" do
		expect(book.title).to eq("The Stranger")
		expect(book.author).to eq("Albert Camus")
		expect(book.id).to be_nil
	end

	it "has a default status of available" do
		expect(book.status).to eq("available")
	end

	it "can be checked out" do
		did_it_work = book.check_out
		expect(did_it_work).to eq(true)
		expect(book.status).to eq('checked_out')
	end

	it "can't be checked out twice in a row" do
		did_it_work = book.check_out
		expect(did_it_work).to eq(true)

		did_it_work_again = book.check_out
		expect(did_it_work_again).to eq(false)

		expect(book.status).to eq('checked_out')
	end

	it "can be checked in" do
		book.check_out
		book.check_in

		expect(book.status).to eq('available')
	end
end

describe Borrower do
	it "has a name" do
		borrower = Borrower.new("Jorge")
		expect(borrower.name).to eq("Jorge")
	end
end

describe Library do
	let(:lib) { Library.new }
	it "starts with an empty array of books" do
		expect(lib.books.count).to eq(0)
	end

	it "add new books and assigns it an id" do
		lib.register_new_book("Nausea", "Jean-Paul Sartre")
		expect(lib.books.count).to eq(1)

		created_book = lib.books.first
		expect(created_book.title).to eq('Nausea')
		expect(created_book.author).to eq('Jean-Paul Sartre')
		expect(created_book.id).to_not be_nil
	end

	it "can add multiple books" do
		lib.register_new_book("Book One", "Juanito Tre Diente")
		lib.register_new_book("Book Two", "Julito Trucupei")
		lib.register_new_book("Book Three", "Juan de los Palotes")

		expect(lib.books.count).to eq(3)
	end

	it "allows a Borrower to check out a book by its id" do
		lib.register_new_book("La La Land", "Green Velvet")
		book_id = lib.books.first.id

		juan = Borrower.new('Juan')
		book = lib.check_out_book(book_id, juan)

		expect(book).to be_a(Book)
		expect(book.title).to eq("La La Land")
		expect(book.status).to eq('checked_out')
	end

	it "knows who borrowed a book" do
		lib.register_new_book("Learning you a Haskell for Great Good", "Miram Lipovaca")
		book_id = lib.books.first.id

		borrower = Borrower.new('Juan')
		book = lib.check_out_book(book_id, borrower)

		expect(lib.get_borrower(book_id)).to eq("Juan")
	end

	it "does not allow a book to be checked out twice in a row" do
		lib.register_new_book("The Rails 4 Way", "Obie Fernandez")
		book_id = lib.books.first.id

		borrower = Borrower.new('Juan')
		book = lib.check_out_book(book_id, borrower)

		expect(book).to be_a(Book)

		book_again = lib.check_out_book(book_id, borrower)
		expect(book_again).to be_nil

		other_borrower = Borrower.new("Julito")
		book_again = lib.check_out_book(book_id, other_borrower)
		expect(book_again).to be_nil
	end

	it "allows a Borrower to check a book back in" do
		lib.register_new_book("The Rails 4 Way", "Obie Bermudez")
		book_id = lib.books.first.id

		borrower = Borrower.new("Juan")
		book = lib.check_out_book(book_id, borrower)

		lib.check_in_book(book)
		expect(book.status).to eq('available')
	end

	it "does not allow a Borrower to check out more than one Book at any given time" do
		lib.register_new_book("The Rails 4 Way", "Obie Bermudez")
		lib.register_new_book("La La Land", "Green Velvet")
		lib.register_new_book("The Art of Seduction", "Robert Greene")

		borrower = Borrower.new("Juan")
		book_one = lib.books[0]
		book_two = lib.books[1]
		book_three = lib.books[2]

		book = lib.check_out_book(book_one.id, borrower)
		expect(book.title).to eq("The Rails 4 Way")

		book = lib.check_out_book(book_two.id, borrower)
		expect(book.title).to eq("La La Land")

		book = lib.check_out_book(book_three.id, borrower)
		expect(book).to be_nil
	end

	it "returns a list of books available" do
		lib.register_new_book("The Rails 4 Way", "Obie Bermudez")
		lib.register_new_book("La La Land", "Green Velvet")
		lib.register_new_book("The Art of Seduction", "Robert Greene")

		expect(lib.available_books.count).to eq(3)
		expect(lib.available_books.first).to be_a(Book)

		borrower = Borrower.new("Juan")
		book = lib.check_out_book(lib.available_books.first.id, borrower)

		expect(lib.available_books.count).to eq(2)
	end

	it "allows a book to be checked out after it has been returned" do
		lib.register_new_book("The Rails 4 Way", "Obie Bermudez")
		book_id = lib.books.first.id

		borrower = Borrower.new("Juan")
		book = lib.check_out_book(book_id, borrower)
		expect(lib.get_borrower(book_id)).to eq("Juan")

		lib.check_in_book(book)

		other_borrower = Borrower.new("Julito")
		book = lib.check_out_book(book_id, other_borrower)
		expect(lib.get_borrower(book_id)).to eq("Julito")
	end

	it "returns a list of borrowed books" do
		lib.register_new_book("The Rails 4 Way", "Obie Bermudez")
		lib.register_new_book("La La Land", "Green Velvet")
		lib.register_new_book("The Art of Seduction", "Robert Greene")

		book_one = lib.books[0]

		# No books has been checked out so far.
		expect(lib.borrowed_books.count).to eq(0)

		borrower = Borrower.new("Juan")
		book = lib.check_out_book(book_one.id, borrower)

		# The should be now one book checked out.
		expect(lib.borrowed_books.count).to eq(1)
		expect(lib.borrowed_books.first).to be_a(Book)
	end
end
















