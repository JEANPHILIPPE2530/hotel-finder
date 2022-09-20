class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :price
      t.integer :capacity
      t.references :hotel, foreign_key: true
      t.timestamps
    end
  end
end
