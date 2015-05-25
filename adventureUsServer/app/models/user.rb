class User < ActiveRecord::Base
  has_many :user_categories
  has_many :categories, through: :user_categories
  has_many :attendee_events
  has_many :attend_events, through: :attendee_events, source: :event
  has_many :create_events, class_name: "Event"
end
