class AddSignaledToInternship < ActiveRecord::Migration
  def change
	  def self.up
	    add_column :internships, :signaled, :boolean, :default => false
	    add_index  :internships, :signaled
	  end

	  def self.down
	    remove_index  :internships, :signaled
	    remove_column :internships, :signaled
	  end
  end
end
