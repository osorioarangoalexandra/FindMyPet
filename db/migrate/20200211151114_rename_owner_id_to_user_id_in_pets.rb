class RenameOwnerIdToUserIdInPets < ActiveRecord::Migration[6.0]
    def up
      rename_column :pets, :owner_id, :user_id
    end
  
    def down
      rename_column :pets, :user_id, :owner_id
    end
end


