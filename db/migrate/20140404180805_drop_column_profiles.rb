class DropColumnProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :profile_id
    add_column :profiles, :breed_id, :integer
  end
end
