class CreateArticlesCategories < ActiveRecord::Migration
  def up
    create_table :recipes_categories, :id => false do |t|
      t.references :recipe
      t.references :category
    end
  end

  def down
    drop_table :recipes_categories
  end
end
