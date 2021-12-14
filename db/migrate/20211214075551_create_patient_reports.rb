class CreatePatientReports < ActiveRecord::Migration[6.1]
  def change
    create_table :patient_reports do |t|
      t.integer :report_id
      t.integer :patient_id
      t.timestamps
    end
  end
end
