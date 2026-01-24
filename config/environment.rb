require_relative "database"
require_relative "../models/application_record"

Dir[File.join(__dir__, "../models/*.rb")].each { |f| require f }
