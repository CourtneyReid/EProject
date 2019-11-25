# frozen_string_literal: true

class AddCostAndQuantityToTeddyBearOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :teddybearorders, :cost, :integer
    add_column :teddybearorders, :quantity, :integer
  end
end
