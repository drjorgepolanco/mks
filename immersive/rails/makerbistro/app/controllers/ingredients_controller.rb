class IngredientsController < ApplicationController
  before_action :set_menu_item, only: [:create]

  def create
    @ingredient = @menu_item.ingredients.where(:name => ingredient_params[:name]).first_or_create do |ingredient|
      @menu_item.ingredients << ingredient
    end
    if @menu_item.save
      redirect_to @menu_item, notice: "The ingredient was successfully created!"
    else
      redirect_to @menu_item, alert: "This ingredient already exist!"
    end
  end

  private

    def set_menu_item
      @menu_item = MenuItem.find(params[:menu_item_id])
    end

    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
end
