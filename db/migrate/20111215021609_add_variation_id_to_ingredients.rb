class AddVariationIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :variation_id, :integer
  end
end
