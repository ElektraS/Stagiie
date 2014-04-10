class Removenotnull < ActiveRecord::Migration
  def change
  	change_column :users, :approved, :boolean, :null => true
  end
end
