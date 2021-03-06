class CreateBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :buys do |t|
      t.references :user, null: false
      t.string :hour
      t.jsonb :products
      t.string :amount
      t.string :state

      t.timestamps
    end
  end
end
