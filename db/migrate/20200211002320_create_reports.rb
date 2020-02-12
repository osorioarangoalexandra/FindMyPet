class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.integer :pet_id
      t.integer :user_id
      t.date :last_seen
      t.decimal :latitude
      t.decimal :longitude
      t.text :comment
      t.timestamps      
    end
  end
end
