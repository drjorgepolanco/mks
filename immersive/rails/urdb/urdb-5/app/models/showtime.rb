class Showtime < ActiveRecord::Base
  belongs_to :movie

  validates :location, :time, presence: true
end
