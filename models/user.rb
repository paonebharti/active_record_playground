# models/user.rb
class User < ApplicationRecord
  has_many :posts
  has_many :orders
end
