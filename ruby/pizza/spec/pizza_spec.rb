require './pizza'

describe Pizza do
	let(:pizza) { Pizza.new }

  describe '.initialize' do
  	it "records all of the toppings" do
  		toppings = [
  			Topping.new('mushrooms', vegetarian: true),
  			Topping.new('pepperoni')
  		]
  		pizza = Pizza.new(toppings)

  		expect(pizza.toppings).to eq(toppings)
  	end

  	it "defaults the toppings to cheese, when no toppings where provided" do
  		expect(pizza.toppings.size).to eq(1)
  		expect(pizza.toppings.first.name).to eq('cheese')
  	end

  	it "returns a delivery_time of nil if pizza has not been ordered for delivery" do
  		expect(pizza.delivery_time).to be_nil
  	end
  end

  describe '#vegetarian?' do
  	it "returns true if all toppings are vegetarian" do
  		toppings = [
  			Topping.new('pepperoni'),
  			Topping.new('cheese', vegetarian: true),
  			Topping.new('tomato', vegetarian: true)
  		]
  		pizza = Pizza.new(toppings)

  		expect(pizza.vegetarian?).to eq(false)

  		toppings = [
  			Topping.new('basil', vegetarian: true),
  			Topping.new('cheese', vegetarian: true),
  			Topping.new('tomato', vegetarian: true)
  		]
  		pizza = Pizza.new(toppings)

  		expect(pizza.vegetarian?).to eq(true)
  	end
  end

  describe '#add_topping' do
  	it "adds a new topping to the pizza" do
  		pizza = Pizza.new

  		pizza.add_topping("ham")

  		expect(pizza.toppings).to include('ham')
  	end
  end

  describe '#deliver!' do
  	it "should return the current time" do
  		pizza = Pizza.new

  		current_time = Time.now
  		expect(Time).to receive(:now).and_return(current_time)
  		pizza.deliver!

  		expect(pizza.delivery_time).to eq(current_time + 60 * 30)
  	end
  end

  describe '#late?' do
    it "determines whether the delivery time is past" do
      pizza = Pizza.new
      pizza.deliver!
      pizza.late?

      late_time = Time.now + 60 * 31
      early_time = Time.now + 60 * 15
      expect(late_time - pizza.delivery_time).to be >= 60
      expect(pizza.delivery_time - early_time).to be <= 60 * 15
    end
  end
end

describe Topping do
  describe '.initialize' do
  	it "sets the name of the Topping" do
  		topping = Topping.new('olives')

  		expect(topping.name).to eq('olives')
  	end

  	it "sets whether or not the topping is vegetatian" do
  		topping = Topping.new('olives', vegetarian: true)

  		expect(topping.vegetarian).to eq(true)
  	end
  end
end