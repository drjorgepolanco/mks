class CreateAlumnis < ActiveRecord::Migration
  def change
    create_table :alumnis do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture_url

      t.timestamps
    end
  end
end
