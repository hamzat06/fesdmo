class AddOthernamesToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :other_names, :string
  end
end
