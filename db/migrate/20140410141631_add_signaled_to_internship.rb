class AddSignaledToInternship < ActiveRecord::Migration
  def self.up
    add_column :internships, :approved, :boolean, :default => false, :null => false
    add_index  :internships, :approved
  end

  def self.down
    remove_index  :internships, :approved
    remove_column :internships, :approved
  end
end
