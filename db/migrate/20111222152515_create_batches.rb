class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :name
      t.integer :recipe_id

      t.timestamps
    end
  end
end
