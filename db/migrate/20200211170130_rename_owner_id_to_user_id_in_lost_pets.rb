class RenameOwnerIdToUserIdInLostPets < ActiveRecord::Migration[6.0]
  def up
    rename_column :lost_pets, :owner_id, :user_id
  end

  def down
    rename_column :lost_pets, :user_id, :owner_id
  end
end
