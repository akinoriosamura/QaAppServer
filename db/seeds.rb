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
    document: Faker::Lorem.sentence(2),
    l_price: 300,
    role: 0
  )
end

users = User.order(:created_at)
10.times do
  content = Faker::Lorem.sentence(5)
  target_id = Faker::Number.number(2)
  users.each { |user| user.posts.create!(content: content, target_id: target_id, price: 100) }
end


users = User.order(:created_at).take(10)
users.each do |user|
    posts = user.posts.order(:created_at).take(3)
    posts.each do |post|
        post_id = post.id
        content = Faker::Lorem.sentence(5)
        user.comments.create!(content: content, post_id: post_id)
    end
end

users = User.order(:created_at).take(10)
users.each do |user|
    comments = user.comments.order(:created_at).take(3)
    comments.each do |comment|
        comment_id = comment.id
        user.views.create!(comment_id: comment_id)
    end
end