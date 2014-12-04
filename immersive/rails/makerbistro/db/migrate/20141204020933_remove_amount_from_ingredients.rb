class RemoveAmountFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :amount, :string
  end
end
