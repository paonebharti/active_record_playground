# models/user.rb
class User < ApplicationRecord
  has_many :posts
end
