class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster_url
      t.string :trailer_url
      t.string :nation
      t.text :description

      t.timestamps
    end
  end
end
