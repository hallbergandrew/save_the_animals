class CreateStates < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
    end
     create_table :states do |t|
      t.string :name
      t.belongs_to :country
    end
     create_table :cities do |t|
      t.string :name
      t.belongs_to :state
    end

  end
end
