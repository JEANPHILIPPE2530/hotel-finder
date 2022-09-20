class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
