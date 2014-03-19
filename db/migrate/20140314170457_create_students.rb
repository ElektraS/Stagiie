class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :first_name
      t.string :mail
      t.integer :year
      t.integer :phone

      t.timestamps
    end
  end
end
