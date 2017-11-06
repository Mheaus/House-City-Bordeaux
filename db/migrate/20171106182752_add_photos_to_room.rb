class AddPhotosToRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :photos, :json
  end
end
