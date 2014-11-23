class AddUploaderToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :uploader, :string
  end
end
