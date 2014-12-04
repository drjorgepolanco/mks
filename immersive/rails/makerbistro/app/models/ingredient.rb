class Ingredient < ActiveRecord::Base
	has_many :recipes
	has_many :menu_items, through: :recipes

	validates :name, presence: true
end
