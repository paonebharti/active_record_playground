puts "🚀 Initial project setup..."

unless system("bundle check")
  system("bundle install") || abort("❌ Bundler failed")
end

system("ruby scripts/reset_db.rb") || abort("❌ DB setup failed")

puts "✅ Setup complete. Run: ruby playground.rb"
