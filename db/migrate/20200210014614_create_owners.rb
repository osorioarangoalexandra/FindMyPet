class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :lastname
      t.integer :phone
      t.string :email
      t.timestamps
    end
  end
