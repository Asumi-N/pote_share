class RemoveColumnFromTables < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :price, :integer
    remove_column :users, :reservation_id, :integer
    remove_column :rooms, :reservation_id, :integer
  end
end
