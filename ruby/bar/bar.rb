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
		if discount > 1
			@happy_discount = 1
		elsif discount < 0
			@happy_discount = 0
		else
			@happy_discount = discount
		end
	end

	def happy_hour?
		time = Time.now
		if (time.hour >= 15 && time.hour < 16) && (time.monday? || time.wednesday?)
			@happy_discount = 0.5
			true
		elsif (time.hour >= 15 && time.hour < 16) 
			@happy_discount = 0.3
			true
		else
			@happy_discount = 0
			false
		end
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
