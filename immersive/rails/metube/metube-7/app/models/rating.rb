class Rating < ActiveRecord::Base
	belongs_to :video
	belongs_to :user

	validates :value, :user_id, :video_id, presence: true
	validates :video_id, uniqueness: { scope: :user_id }
end
