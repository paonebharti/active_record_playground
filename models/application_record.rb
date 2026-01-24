require_relative "../config/database"

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
