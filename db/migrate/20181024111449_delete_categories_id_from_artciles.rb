class DeleteCategoriesIdFromArtciles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :categories_id, :index
  end
end
