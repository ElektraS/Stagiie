class AddColumnsToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :firts_name, :string
    add_column :admins, :year, :integer
    add_column :admins, :phone, :integer
  end
end
