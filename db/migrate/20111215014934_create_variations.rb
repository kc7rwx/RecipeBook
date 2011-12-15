class CreateVariations < ActiveRecord::Migration
  def change
    create_table :variations do |t|
      t.string :batch_name
      t.boolean :is_main
      t.integer :recipe_id

      t.timestamps
    end
  end
end
