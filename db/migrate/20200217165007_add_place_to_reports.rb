class AddPlaceToReports < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :place, :string
  end
end
