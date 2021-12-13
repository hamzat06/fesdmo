class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :surname
      t.string :gender
      t.string :marital_status
      t.integer :phone_number
      t.datetime :date_of_birth
      t.string :address
      t.string :email
      t.string :occupation
      t.string :religion
      t.string :next_of_kin
      t.timestamps
    end
  end
end
