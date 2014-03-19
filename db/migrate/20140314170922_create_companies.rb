class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :field
      t.string :web_site
      t.string :mail
      t.string :phone
      t.string :adress
      t.string :existence
      t.text :supervisors

      t.timestamps
    end
  end
end
