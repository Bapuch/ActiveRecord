# This class is linked to the likes table
class Like < ApplicationRecord
  # 1 user - N likes
  belongs_to :user
  # 1 artcile - N likes
  belongs_to :article
end
