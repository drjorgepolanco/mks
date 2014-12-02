class AddSlugToStars < ActiveRecord::Migration
  def change
    add_column :stars, :slug, :string
    add_index :stars, :slug
  end
end
