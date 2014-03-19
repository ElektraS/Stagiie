class AddMissingsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :firts_name, :string
    add_column :users, :year, :integer
    add_column :users, :phone, :integer
  end
end
