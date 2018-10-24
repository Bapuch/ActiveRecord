# This class is linked to the categories table
class Category < ApplicationRecord
  # 1 Category - N artciles
  has_many :articles
end
