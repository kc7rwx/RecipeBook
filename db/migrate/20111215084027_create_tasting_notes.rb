class CreateTastingNotes < ActiveRecord::Migration
  def change
    create_table :tasting_notes do |t|
      t.integer :variation_id
      t.text :notes

      t.timestamps
    end
  end
end
