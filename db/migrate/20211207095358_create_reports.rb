class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.integer :doctor_id
      t.string :obesity
      t.string :degree
      t.text :recommendation
      t.text :prescription
      t.timestamps
    end
  end
end
