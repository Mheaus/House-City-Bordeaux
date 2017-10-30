class CreateInsights < ActiveRecord::Migration[5.1]
  def change
    create_table :insights do |t|
      t.string :name
      t.string :icon
      t.string :quantity

      t.timestamps
    end
  end
end
