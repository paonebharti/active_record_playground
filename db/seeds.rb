require_relative "../config/environment"
require "faker"

puts "🌱 Seeding data..."

User.destroy_all
Post.destroy_all
Comment.destroy_all

users = []

10.times do
  users << User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.unique.email
  )
end

users.each do |user|
  rand(0..5).times do
    post = user.posts.create!(
      title: Faker::Lorem.sentence
    )

    rand(0..7).times do
      post.comments.create!(
        body: Faker::Lorem.paragraph
      )
    end
  end
end

puts "✅ Seeding complete"
