class CreateLostPets < ActiveRecord::Migration[6.0]
  def change
    create_table :lost_pets do |t|
      t.integer :pet_id
      t.integer :owner_id
      t.datetime :lost_date
      t.decimal :latitude
      t.decimal :longitude
      
      t.timestamps
    end
  end
end
