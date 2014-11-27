class Video < ActiveRecord::Base
	belongs_to :user

	validates :title, :youtube_id, :user_id, presence: true
end
