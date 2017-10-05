class AddBackgroundUrlToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :background_url, :string
  end
end
