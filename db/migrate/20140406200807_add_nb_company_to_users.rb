class AddNbCompanyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nb_compagny, :integer
  end
end
