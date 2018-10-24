# Migration to create the categories table
class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :namex  
      t.timestamps
    end
  end
end
