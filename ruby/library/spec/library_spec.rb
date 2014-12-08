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