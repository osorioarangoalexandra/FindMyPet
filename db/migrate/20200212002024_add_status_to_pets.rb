class AddStatusToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :status, :boolean
  end
end
