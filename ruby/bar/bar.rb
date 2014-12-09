require 'time'

class Bar
	attr_reader :name, :menu_items

	def initialize(name)
		@name = 'The Irish Yodel'
		@menu_items = []
		@happy_discount = 0
	end

	def add_menu_item(name, price)
		item = Item.new(name, price)
		@menu_items.push(item)
	end

	def happy_discount
		happy_hour? ? @happy_discount : 0
	end

	def happy_discount=(discount)
		@happy_discount = discount
	end

	def happy_hour?
	end

	def get_price
	end
end

class Item
	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end
end
