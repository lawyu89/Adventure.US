class CreateAttendeeEvents < ActiveRecord::Migration
  def change
    create_table :attendee_events do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :rating
      t.string :comment
      t.timestamps null: false
    end
  end
end
