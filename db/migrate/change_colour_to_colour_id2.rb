# frozen_string_literal: true

class ChangeColourToColourId2 < ActiveRecord::Migration[6.0]
  def change
    rename_column :teddybears, :colour, :colour_id
    change_column :teddybears, :colour_id, :integer
  end
end
