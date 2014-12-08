class Book

	attr_accessor :title, :author, :status
	attr_reader :id

	def initialize(title, author, status='available', id=nil)
		@title = title
		@author = author
		@status = status
	end
end