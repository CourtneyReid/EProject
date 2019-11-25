# frozen_string_literal: true

class AddColourId < ActiveRecord::Migration[6.0]
  def change
    change_column :teddy_bears, :colour, :integer
  end
end
