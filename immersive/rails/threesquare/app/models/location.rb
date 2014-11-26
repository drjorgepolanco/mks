class Location < ActiveRecord::Base
	validates :name, :picture_url, :review, presence:true
end
