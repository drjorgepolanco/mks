class RemoveRatingFromVideos < ActiveRecord::Migration
  def change
    remove_column :videos, :rating, :string
  end
end
