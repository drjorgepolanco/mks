require './pizza'

describe Pizza::Pie do
	describe '.initialize' do
		it "records all of the toppings" do
			toppings = [
				Pizza::Topping.new("mushrooms", vegetarian: true),
				Pizza::Topping.new("pepperoni")
			]
			pizza = Pizza::Pie.new(toppings)

			expect(pizza.toppings).to eq(toppings)
		end

		it "defaults the toppings to tomato & cheese, if the pizza has no toppings" do
			pizza = Pizza::Pie.new

			expect(pizza.toppings.size).to eq(1)
			expect(pizza.toppings.first.name).to eq("tomato & cheese")
		end

		describe '#vegetarian' do
			it "tells if a pie is not vegetarian" do
				toppings = [
					Pizza::Topping.new("mushrooms", vegetarian: true),
					Pizza::Topping.new("pepperoni")
				]
				pizza = Pizza::Pie.new(toppings)

				expect(pizza.vegetarian?).to eq(false)
			end

			it "tells if a pie is vegetarian" do
				toppings = [
					Pizza::Topping.new("mushrooms", vegetarian: true),
					Pizza::Topping.new("tomato", vegetarian: true),
					Pizza::Topping.new("cheese", vegetarian: true)
				]
				pizza = Pizza::Pie.new(toppings)
				expect(pizza.vegetarian?).to eq(true)
			end
		end
	end
end

describe Pizza::Topping do
	describe '.initialize' do
		it "sets the name of the topping" do
			topping = Pizza::Topping.new("olives")

			expect(topping.name).to eq("olives")
		end

		it "sets whether or not the topping is vegetarian" do
			topping = Pizza::Topping.new "bell peppers", vegetarian: true

			expect(topping.vegetarian).to eq(true)
		end
	end
end
