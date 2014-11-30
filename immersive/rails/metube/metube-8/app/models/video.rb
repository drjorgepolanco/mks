class Video < ActiveRecord::Base
	belongs_to :user
  validates :user_id, :youtube_id, :title, presence: true

  after_create :youtube_query

  def youtube_query
	  response = Unirest.get("https://www.googleapis.com/youtube/v3/videos?id=#{self.youtube_id}&key=API_KEY&part=snippet")
    self.description = response.body["items"][0]['snippet']['description']
    self.save
	end
end
