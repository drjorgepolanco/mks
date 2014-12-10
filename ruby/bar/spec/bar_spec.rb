require 'pry-byebug'
require './bar.rb'

describe Bar do
	before { @bar = Bar.new('The Irish Yodel') }

	it 'initializes with a name' do
		expect(@bar.name).to eq('The Irish Yodel')
	end

	it 'cannot change its name' do
		expect { @bar.name = 'lolcat cave' }.to raise_error
	end

	it 'initializes with an empty menu' do
		expect(@bar.menu_items.count).to eq(0)
	end

	it 'can add menu items' do
		@bar.add_menu_item('Cosmo', 5.40)
		@bar.add_menu_item('Salty Dog', 7.80)

		expect(@bar.menu_items.count).to eq(2)
	end

	it 'can retrieve menu items' do
		@bar.add_menu_item('Little Johnny', 9.95)
		
		item = @bar.get_item_by_name('Little Johnny')
		expect(item).to eq('Little Johnny: $9.95')
	end

	it 'has a default happy hour discount of zero' do
		expect(@bar.happy_discount).to eq(0)
	end

	it 'can set its happy hour discount' do
		expect { @bar.happy_discount = 0.5 }.to_not raise_error
	end

	it 'only returns a discount when xit\'s happy hour' do
		@bar.happy_discount = 0.5

		expect(@bar).to receive(:happy_hour?).and_return(false)
		expect(@bar.happy_discount).to eq(0)

		expect(@bar).to receive(:happy_hour?).and_return(true)
		expect(@bar.happy_discount).to eq(0.5)

		@bar.happy_discount = 0.3

		expect(@bar).to receive(:happy_hour?).and_return(false)
		expect(@bar.happy_discount).to eq(0)

		expect(@bar).to receive(:happy_hour?).and_return(true)
		expect(@bar.happy_discount).to eq(0.3)
	end

	it 'constrains its happy hour\'s discount between zero and one' do
		expect(@bar).to receive(:happy_hour?).twice.and_return(true)

		@bar.happy_discount = 2
		expect(@bar.happy_discount).to eq(1)

		@bar.happy_discount = -3
		expect(@bar.happy_discount).to eq(0)
	end

	describe '#get_price' do
		it 'returns the price of the item' do
			@bar.add_menu_item('Margarita', 4.75)
			@bar.add_menu_item('Long Island Ice Tea', 3.40)
			@bar.add_menu_item('Shiner Bock', 3.00)
			@bar.add_menu_item('Coke', 1.50)

			expect(@bar.get_price('Coke')).to eq(1.50)
		end
	end

	describe '#happy_hour?' do
		it 'knows when it\'s happy hour (3:00pm to 4:00pm)' do
			expect(Time).to receive(:now).and_return(Time.parse('2014-12-09 15:23:14 -0500'))

			expect(@bar.happy_hour?).to eq(true)
		end

		it 'is not happy hour otherwise' do
			expect(Time).to receive(:now).and_return(Time.parse('2014-12-09 18:12:40 -0500'))

			expect(@bar.happy_hour?).to eq(false)
		end
	end

	context 'during normal hours' do
		it 'does not apply any discount' do
			expect(Time).to receive(:now).and_return(Time.parse('2014-12-09 18:12:40 -0500'))

			expect(@bar.happy_discount).to eq(0)
		end
	end

	context 'during happy hour' do
		it 'knows to provide a especial discount on mondays and wednesdays' do
			expect(Time).to receive(:now).and_return(Time.parse('2014-12-08 15:49:32 -0500'))

			expect(@bar.happy_discount).to eq(0.5)
		end
	end
end