class Event < ActiveRecord::Base
  has_many :category_events
  has_many :categories, through: :category_events
  has_many :attendee_events
  has_many :attendees, through: :attendee_events, source: :user
  belongs_to :creator, class_name: "User", foreign_key: :user_id
end
