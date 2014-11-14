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
				expect(pizza.vegetarian?).to be_true
			end
		end

		describe "#deliver!" do
			it "sets the delivery time for the pizza to 30 minutes from now" do
				now = Time.now
				pizza = Pizza::Pie.new
				pizza.deliver!(now)

				expect(pizza.delivery_time).to eq(now + 30*60)
			end
		end

		describe "#late?" do
			context "when the pizza arrive past delivery time" do
				it "returns true" do
					pizza = Pizza::Pie.new
					pizza.delivery_time = Time.now - 1

					expect(pizza.late?).to be_true
				end
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
