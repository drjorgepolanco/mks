class AddDescriptionToAlumnis < ActiveRecord::Migration
  def change
    add_column :alumnis, :description, :text
  end
end
