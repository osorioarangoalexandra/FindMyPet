class AddLastSeenToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :last_seen, :string
  end
end
