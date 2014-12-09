require 'pry-byebug'
require './bar.rb'

describe Bar do
	before { @bar = Bar.new('The Irish Yodel') }

	it 'initializes with a name' do
		expect(@bar.name).to eq('The Irish Yodel')
	end
end