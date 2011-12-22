class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :qty
      t.string :units
      t.integer :batch_id

      t.timestamps
    end
  end
end
