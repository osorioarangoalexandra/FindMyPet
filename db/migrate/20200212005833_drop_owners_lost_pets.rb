class DropOwnersLostPets < ActiveRecord::Migration[6.0]
  def change
    drop_table :owners 
    drop_table :lost_pets
  end
end
