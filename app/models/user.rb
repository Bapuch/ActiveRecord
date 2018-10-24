# This class is linked to the users table
class User < ApplicationRecord
  # 1 user - N artciles
  has_many :articles
  # 1 user - N comments
  has_many :comments
  # 1 user - N likes
  has_many :likes
end
