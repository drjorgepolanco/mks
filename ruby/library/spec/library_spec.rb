require './library.rb'
require 'pry-byebug'

describe Book do
	it "has a title and author, and nil id" do
		book = Book.new("The Stranger", "Albert Camus")

		expect(book.title).to eq("The Stranger")
		expect(book.author).to eq("Albert Camus")
		expect(book.id).to be_nil
	end

	it "has a default status of available" do
		book = Book.new

		expect(book.status).to eq("available")
	end
end