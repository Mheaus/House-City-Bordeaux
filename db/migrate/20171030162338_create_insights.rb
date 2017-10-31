class CreateInsights < ActiveRecord::Migration[5.1]
  def change
    create_table :insights do |t|
      t.string :icon_name
      t.string :quantity
      t.string :legend
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
