class AddDoctorToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :doctor_id, :integer
  end
end
