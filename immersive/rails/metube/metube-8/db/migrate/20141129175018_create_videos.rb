class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :youtube_id
      t.text :description
      t.string :user_id

      t.timestamps
    end
  end
end
