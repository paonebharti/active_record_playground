DB_FILE = "db/playground.sqlite3"

File.delete(DB_FILE) if File.exist?(DB_FILE)

puts "🔄 Resetting database..."

system("bundle exec rake db:migrate") || abort("❌ Migration failed")
system("ruby db/seeds.rb") || abort("❌ Seeding failed")

puts "✅ Database ready"
