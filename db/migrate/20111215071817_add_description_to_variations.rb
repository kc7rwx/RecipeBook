class AddDescriptionToVariations < ActiveRecord::Migration
  def change
    add_column :variations, :description, :string
  end
end
