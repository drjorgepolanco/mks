class IngredientsController < ApplicationController
	before_action :set_menu_item, only: [:create]
	before_action :get_new_ingredient, only: [:create]

	def create
		@ingredient = @menu_item.ingredients.new(@new_ingredient)
		if @menu_item.save
			redirect_to @menu_item, notice: "The ingredient was successfully created!"
		else
			redirect_to @menu_item, notice: "There was a problem creating the ingredient. Please, try again!"
		end
	end

	private

		def set_menu_item
			@menu_item = MenuItem.find(params[:menu_item_id])
		end

		def get_new_ingredient
			@new_ingredient = params.require(:ingredient).permit(:name)
		end
end

