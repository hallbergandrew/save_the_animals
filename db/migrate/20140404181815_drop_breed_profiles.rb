class DropBreedProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :breed_id

    create_table :mix_breeds do |t|
      t.integer :breed_id
      t.integer :profile_id
    end
  end
end
