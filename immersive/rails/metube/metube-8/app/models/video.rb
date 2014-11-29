class Video < ActiveRecord::Base
	belongs_to :user
  validates :user_id, :youtube_id, :title, presence: true

  after_create :set_description

  def set_description
	  self.description = "This is a test to make sure a description is created immediately after a video record is created"
	  self.save
	end
end
