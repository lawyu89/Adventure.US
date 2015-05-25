class Category < ActiveRecord::Base
  has_many :category_events
  has_many :events, through: :category_events
  has_many :user_categories
  has_many :users, through: :user_categories
end
