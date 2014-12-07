class Person
	attr_reader :money

	def initialize(amount)
		@money = amount
	end

	def get_paid(salary)
		@money += salary
	end

	def test_person
		p = Person.new(500)
		puts p.money
		p.get_paid(200)
		puts p.money
	end
end
