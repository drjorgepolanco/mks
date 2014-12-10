class Bar
	attr_reader :name, :menu_items

	def initialize(name)
		@name = name
		@menu_items = {}
		@happy_discount = 0
	end

	def add_menu_item(name, price)
		@menu_items[name] = price
	end

	def get_item_by_name(name)
		@menu_items.each do |key, value|
			return "#{key}: $#{value}" if key == name
		end
	end

	def get_price(name)
		@menu_items.fetch(name)
	end

	def show_menu_items
		@menu_items.each do |key, value|
			puts "- #{key}: $#{value}"
		end
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
			@happy_discount = 0.50 
			true
		elsif time.hour >= 15 && time.hour < 16
			@happy_discount = 0.3
			true
		else
			false
		end
	end
end
