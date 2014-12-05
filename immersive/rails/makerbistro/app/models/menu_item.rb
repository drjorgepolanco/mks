class MenuItem < ActiveRecord::Base
	has_many :recipes
	has_many :ingredients, through: :recipes

	default_scope -> { order('created_at DESC') }

	validates :name, presence: true, uniqueness: true
	validates :image, presence: true
end
