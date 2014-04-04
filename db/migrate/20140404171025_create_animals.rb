class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.column :name, :string
    end
    create_table :breeds do |t|
      t.column :name, :string
      t.column :animal_id, :integer
    end
    create_table :profiles do |t|
      t.column :name, :string
      t.column :gender, :string
      t.column :age, :integer
      t.column :weight, :float
      t.column :description, :text
      t.column :picture, :string
      t.column :animal_id, :integer
      t.column :profile_id, :integer
      t.column :user_id, :integer
    end
   create_table :users do |t|
      t.string :username
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.timestamps
    end
  end
end
