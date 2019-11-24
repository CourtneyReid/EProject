class CreateTeddyBears < ActiveRecord::Migration[6.0]
  def change
    create_table :teddy_bears do |t|
      t.string :name
      t.string :colour
      t.string :description
      t.integer :cost
      t.reference :size
      t.reference :status

      t.timestamps
    end
  end
end
