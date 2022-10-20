class RemoveColumnsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :reserved_room, :integer
    remove_column :users, :registered_room, :integer
    remove_column :rooms, :registered, :string
    remove_column :rooms, :reserved, :string
    remove_column :rooms, :start, :date
    remove_column :rooms, :end, :date
    remove_column :rooms, :number_of_people, :integer
  end
end
