class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.string :name
      t.string :headshot_url
      t.text :bio

      t.timestamps
    end
  end
end
