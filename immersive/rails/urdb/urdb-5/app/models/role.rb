class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :star

  validates :character, :movie_id, :star_id, presence: true
end
