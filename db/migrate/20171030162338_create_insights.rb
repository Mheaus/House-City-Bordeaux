class CreateInsights < ActiveRecord::Migration[5.1]
  def change
    create_table :insights do |t|
      t.string :legend
      t.string :icon
      t.string :quantity
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
