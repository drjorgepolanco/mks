require 'time'

class Bar
	attr_reader :name
	attr_accessor :menu_items

	def initialize(name, menu_items = [])
		@name = 'The Irish Yodel'
		@menu_items = menu_items
	end
end