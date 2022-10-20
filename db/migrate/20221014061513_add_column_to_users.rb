class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :reservation_id, :integer
    add_column :users, :reservation_id, :integer
  end
end
