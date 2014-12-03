class AddMovieReferencesToRole < ActiveRecord::Migration
  def change
    add_reference :roles, :movie, index: true
  end
end
