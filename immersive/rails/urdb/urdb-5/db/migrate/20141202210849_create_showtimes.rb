class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.string :location
      t.string :time
      t.references :movie, index: true

      t.timestamps
    end
  end
end
