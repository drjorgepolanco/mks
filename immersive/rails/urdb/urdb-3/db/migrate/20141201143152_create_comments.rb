class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.references :movie, index: true

      t.timestamps
    end
  end
end
