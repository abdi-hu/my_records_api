class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.text :address
      t.string :availability
      t.integer :phone
      t.string :email
      t.date :next_appoint

      t.timestamps
    end
  end
end
