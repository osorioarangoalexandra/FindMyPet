class AddDateLostToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :date_lost, :date
    add_column :pets, :latitude, :decimal
    add_column :pets, :longitude, :decimal
  end
end
