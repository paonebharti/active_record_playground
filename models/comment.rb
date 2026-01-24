# models/comment.rb
class Comment < ApplicationRecord
  belongs_to :post
end
