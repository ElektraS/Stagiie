class CreateInternships < ActiveRecord::Migration
  def change
    create_table :internships do |t|
      t.string :comp
      t.string :field
      t.string :supervisor
      t.text :commentary
      t.string :period
      t.integer :schoolyear

      t.timestamps
    end
  end
end
