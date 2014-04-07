class AddIdCompanyToInternships < ActiveRecord::Migration
  def change
    add_column :internships, :id_compagny, :integer
  end
end
