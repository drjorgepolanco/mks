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
end