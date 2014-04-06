class AddNbInternshipsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nb_internships, :integer
  end
end
