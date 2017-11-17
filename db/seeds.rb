# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = (1..10).map do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
  )
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.posts.create!(content: content) }
end


users = User.order(:created_at).take(6)
1.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.comments.create!(content: content, post_id: 2) }
end
