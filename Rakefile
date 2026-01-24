require "active_record"
require "active_record/tasks/database_tasks"
require_relative "config/database"

ActiveRecord::Tasks::DatabaseTasks.env = "development"
ActiveRecord::Tasks::DatabaseTasks.database_configuration = ActiveRecord::Base.configurations
ActiveRecord::Tasks::DatabaseTasks.root = File.dirname(__FILE__)
ActiveRecord::Tasks::DatabaseTasks.migrations_paths = ["db/migrate"]

namespace :db do
  task :create do
    ActiveRecord::Tasks::DatabaseTasks.create_current
  end

  task :drop do
    ActiveRecord::Tasks::DatabaseTasks.drop_current
  end

  task :migrate do
    ActiveRecord::Tasks::DatabaseTasks.migrate
  end
end
