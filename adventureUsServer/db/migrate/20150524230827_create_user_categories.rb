class CreateUserCategories < ActiveRecord::Migration
  def change
    create_table :user_categories do |t|
      t.integer :user_id
      t.integer :category_id
      t.integer :attendance_point
      t.timestamps null: false
    end
  end
end
