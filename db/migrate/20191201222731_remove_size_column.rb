# frozen_string_literal: true

class RemoveSizeColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :teddy_bears, :size_id
  end
end
