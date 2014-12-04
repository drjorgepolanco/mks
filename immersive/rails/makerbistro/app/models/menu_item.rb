class MenuItem < ActiveRecord::Base
	has_many :recipes
	has_many :ingredients, through: :recipes

	validates :name, :image, presence: true
end
