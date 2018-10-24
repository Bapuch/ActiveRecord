# Migration to delete the wrongly named categories_id column from the artciles table(should not be plural)
class DeleteCategoriesIdFromArtciles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :categories_id, :index
  end
end
