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
end
















