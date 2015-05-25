class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.string :password_hash
      t.string :gender
      t.string :profile_picture
      t.integer :age
      t.timestamps null: false
    end
  end
end
