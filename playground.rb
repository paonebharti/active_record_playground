require_relative "models/application_record"
Dir["models/*.rb"].each { |f| require_relative "#{f}" }

puts "🔥 ActiveRecord Playground Loaded"
puts "Try: User.first.posts.includes(:comments)"

binding.irb
