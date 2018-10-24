# Migration to add to the articles tables the reference to categories (1 category by article)
class AddCategoryReferenceToArticle < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :category, foreign_key: true
  end
end
