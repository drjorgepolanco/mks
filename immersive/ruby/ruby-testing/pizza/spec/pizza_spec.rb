require './pizza'

describe Pizza::Pie do
	describe '.initialize' do

	end
end

describe Pizza::Topping do
	describe '.initialize' do
		it "sets the name of the topping" do
			topping = Pizza::Topping.new("olives")

			expect(topping.name).to eq("olives")
		end
	end
end
