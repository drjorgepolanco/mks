class Alumni < ActiveRecord::Base

	def full_name
		"#{@alumni.first_name.capitalize} #{@alumni.last_name.capitalize}"
	end
end
