class Showtime < ActiveRecord::Base
	belongs_to :movie
	default_scope -> { order('created_at ASC') }
end
