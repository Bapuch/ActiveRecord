# This class is linked to the artciles table
class Article < ApplicationRecord
  # 1 user - N articles
  belongs_to :user
  # 1 category - N articles
  belongs_to :category
  # 1 artciles - N comments
  has_many :comments
  # 1 artciles - N likes
  has_many :likes
end
