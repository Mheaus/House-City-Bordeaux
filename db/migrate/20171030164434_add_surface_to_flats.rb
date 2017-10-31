class AddSurfaceToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :surface, :integer
  end
end
