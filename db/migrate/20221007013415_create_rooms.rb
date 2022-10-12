class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :introduce
      t.integer :price
      t.string :address
      t.string :image
      t.string :registered
      t.string :reserved
      t.date :start
      t.date :end
      t.integer :number_of_people

      t.timestamps
    end
  end
end
