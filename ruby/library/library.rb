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
			puts "The book has been checked_out already."
			false
		end
	end
end