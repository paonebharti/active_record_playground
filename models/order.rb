# models/post.rb
class Order < ApplicationRecord
  belongs_to :user

  enum :status, {
  pending: 0,
  paid: 1,
  shipped: 2,
  cancelled: 3
}, prefix: true

end
