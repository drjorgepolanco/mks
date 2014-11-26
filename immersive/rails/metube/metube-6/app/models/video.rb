class Video < ActiveRecord::Base
	belongs_to :user

	validates :user_id, :youtube_id, :title, presence: true
end
