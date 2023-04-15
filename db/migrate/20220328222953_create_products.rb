class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name, null: false
      t.text :description, null: false
      t.float :price, null: false
      t.string :state
      t.text :image, null: false
      t.string :time_preparation
      t.boolean :buy
      t.integer :count
      t.boolean :favorite

      t.timestamps
    end
  end
end
