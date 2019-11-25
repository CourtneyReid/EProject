# frozen_string_literal: true

class RenameColourId < ActiveRecord::Migration[6.0]
  def change
    rename_column :teddy_bears, :colour, :colour_id
  end
end
