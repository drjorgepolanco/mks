class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.string :name
      t.text :bio
      t.string :headshot

      t.timestamps
    end
  end
end
