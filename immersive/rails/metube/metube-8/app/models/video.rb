class Video < ActiveRecord::Base
	belongs_to :user
  validates :user_id, :youtube_id, presence: true

  after_create :youtube_query

  def youtube_query
	  response = Unirest.get("https://www.googleapis.com/youtube/v3/videos?id=#{self.youtube_id}&key=#{ENV['API_KEY']}&part=snippet")
	  self.title = response.body["items"][0]['snippet']['title']
    self.description = response.body["items"][0]['snippet']['description']
    self.save
	end
end
