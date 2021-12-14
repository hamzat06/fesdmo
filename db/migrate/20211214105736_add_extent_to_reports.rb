class AddExtentToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :extent, :text
  end
end
