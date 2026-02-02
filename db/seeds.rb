require_relative "../config/environment"
require "faker"

puts "🌱 Seeding data..."

Comment.destroy_all
Post.destroy_all
Order.destroy_all
User.destroy_all

users = User.create!(
  Array.new(10) do
    {
      name: Faker::Name.name,
      email: Faker::Internet.unique.email
    }
  end
)

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

  rand(0..3).times do
    user.orders.create!(
      total_amount: Faker::Commerce.price(range: 100..5000),
      status: Order.statuses.keys.sample
    )
  end
end

puts "✅ Seeding complete"
