class Movie < ActiveRecord::Base
	has_many :showtimes
	has_many :comments
	has_many :roles
	has_many :stars, :through => :roles

	validates :slug, uniqueness: true, presence: true

	before_validation :generate_slug
	
	def snippet
    self.description.truncate 50
  end

  def to_param
  	slug
  end

  def generate_slug
  	self.slug ||= title.parameterize
  end

  # def to_param
  # 	"#{id} - #{title}".parameterize
  # end
end
