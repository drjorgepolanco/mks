class Star < ActiveRecord::Base
	has_many :roles
	has_many :movies, through: :roles

	validates :name, :headshot_url, presence: true
end
