class Video < ActiveRecord::Base
	belongs_to :user
  validates :user_id, :youtube_id, :title, presence: true

  after_create :youtube_query

  def set_description
	  response = Unirest.get("https://www.googleapis.com/youtube/v3/videos?part=snippet%2C+statistics&id=020sZ0PY8ko&key={API_TOKEN}")
		self.description = response.body["items"][0]['snippet']['description']
		self.save
	end
end
