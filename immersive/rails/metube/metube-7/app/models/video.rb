class Video < ActiveRecord::Base
	belongs_to :user
	has_many :ratings

	validates :title, :youtube_id, :user_id, presence: true
end
