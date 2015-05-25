class CreateCategoryEvents < ActiveRecord::Migration
  def change
    create_table :category_events do |t|
      t.integer :category_id
      t.integer :event_id
      t.integer :rating
      t.string :comment
      t.timestamps null: false
    end
  end
end
