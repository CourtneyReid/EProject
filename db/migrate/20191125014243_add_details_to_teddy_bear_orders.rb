# frozen_string_literal: true

class AddDetailsToTeddyBearOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :teddy_bear_orders, :cost, :integer
    add_column :teddy_bear_orders, :quantity, :integer
  end
end
