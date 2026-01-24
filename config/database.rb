require "active_record"
require "logger"

DB_CONFIG = {
  "development" => {
    "adapter"  => "sqlite3",
    "database" => "db/playground.sqlite3"
  }
}

ActiveRecord::Base.configurations = DB_CONFIG
ActiveRecord::Base.establish_connection(:development)

ActiveRecord::Base.logger = Logger.new(STDOUT)
