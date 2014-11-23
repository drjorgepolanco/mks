class Video < ActiveRecord::Base
	def snippet
		self.description.truncate(50)
	end

	def random_rating
		rand(1..5)
	end
end
