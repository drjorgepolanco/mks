class Book

	attr_accessor :title, :author
	attr_reader :id

	def initialize(title, author, id=nil)
		@title = title
		@author = author
	end
end