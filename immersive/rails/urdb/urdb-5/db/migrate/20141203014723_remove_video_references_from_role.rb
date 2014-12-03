class RemoveVideoReferencesFromRole < ActiveRecord::Migration
  def change
    remove_reference :roles, :video, index: true
  end
end
