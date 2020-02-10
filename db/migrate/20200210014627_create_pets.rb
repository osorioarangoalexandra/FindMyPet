class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.integer :owner_id
      t.string :name
      t.string :category
      t.string :breed
      t.string :color
      t.text :characteristic
      t.timestamps
    end
  end
end
