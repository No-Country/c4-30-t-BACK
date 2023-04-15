class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :state
      t.references :user, null: false, foreign_key: true
      t.jsonb :products

      t.timestamps
    end
  end
end
