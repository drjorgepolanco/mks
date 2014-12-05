class MenuItemsController < ApplicationController
	before_action :set_menu_item, only: [:show, :edit, :update, :destroy]

	def index
		@menu_items =  MenuItem.all
		@menu_item = MenuItem.new
	end

	def show
		@current_ingredients = @menu_item.ingredients
		@new_ingredient = @menu_item.ingredients.new
	end

	def new
		@menu_item = MenuItem.new
	end

	def create
		@menu_item = MenuItem.new(menu_item_params)
		respond_to do |format|
			if @menu_item.save
				format.html { redirect_to @menu_item, notice: "The menu item was successfully created!" }
			else
				format.html { redirect_to root_path, alert: "This menu item already exist!" }
			end
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @menu_item.update(menu_item_params)
				format.html { redirect_to @menu_item, notice: "The menu item was successfully updated." }
			else
				format.html { render action: 'edit' }
			end
		end
	end

	def destroy
		@menu_item.destroy
		respond_to do |format|
			format.html { redirect_to menu_items_path }
		end
	end

	private

	def menu_item_params
		params.require(:menu_item).permit(:name, :image)
	end

	def set_menu_item	
		@menu_item = MenuItem.find(params[:id])
	end
end