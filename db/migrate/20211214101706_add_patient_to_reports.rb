class AddPatientToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :patient_id, :integer
  end
end
