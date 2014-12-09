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
	end
end