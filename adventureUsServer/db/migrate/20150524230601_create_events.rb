class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :lat
      t.string :lng
      t.string :video
      t.datetime :start_time
      t.datetime :end_time
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
