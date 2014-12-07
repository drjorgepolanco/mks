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
		if p.money != 500
			raise "did not initialize properly"
		end

		p.get_paid(200)
		if p.money != 700
			raise "person did not get paid"
		end
	end
end
