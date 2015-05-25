require 'faker'

User.delete_all
Event.delete_all
Category.delete_all

users = 30.times.map do
  User.create!( :full_name => Faker::Name.name,
    :email => Faker::Internet.email,
    :phone => Faker::PhoneNumber.cell_phone,
    :profile_picture => Faker::Avatar.image("my-own-slug"),
    :password_hash => 'password' )
end


hike = Category.create( interest: "Hiker Adventures")
shopping = Category.create!( :interest => "Shopping")
competition = Category.create!( :interest => "Competition")
volunteer = Category.create!( :interest => "Volunteer Adventures")
startup = Category.create!( :interest => "Make a company together")
hookup = Category.create!( :interest => "HookUp")
neighborhood = Category.create!( :interest => "Neighborhood Adventures")
street = Category.create!( :interest => "Street Adventures")
learn = Category.create!( :interest => "Study Buddy")
buddy = Category.create!( :interest => "Travel/Buddy Adventurors")
college = Category.create!( :interest => "College Adventures")
party = Category.create!( :interest => "Parties")

Category.all.each do |category|
  10.times do
  start_time = Time.now + (rand(61) - 30).days
  end_time = start_time + (1 + rand(6)).hours

  event = Event.create!( :user_id => users[rand(users.length)].id,
    :name => Faker::Company.name,
    :description => Faker::Lorem.paragraph(2),
    :start_time => start_time,
    :end_time => end_time,
    :address => "#{Faker::Address.city}, #{Faker::Address.state_abbr}",
    :lat => Faker::Address.latitude,
    :lng => Faker::Address.longitude )
    category.events << event
  end
end

all_events = Event.all
users.each do |user|
  random_events = all_events.sample(rand(2..10))
  until random_events.length == 0
    event = random_events.pop
    user.attend_events << event
  end
end

all_categories = Category.all
users.each do |user|
  random_categories = all_categories.sample(rand(1..12))
  until random_categories.length == 0
    category = random_categories.pop
    user.categories << category
  end
end
