class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :room_id
      t.date :start
      t.date :end
      t.integer :price
      t.integer :number

      t.timestamps
    end
  end
end
