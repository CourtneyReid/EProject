class CreateTeddyBearOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :teddy_bear_orders do |t|
      t.references :teddybear, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
