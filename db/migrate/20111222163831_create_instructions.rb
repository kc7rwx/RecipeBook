class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.text :step
      t.integer :batch_id

      t.timestamps
    end
  end
end
