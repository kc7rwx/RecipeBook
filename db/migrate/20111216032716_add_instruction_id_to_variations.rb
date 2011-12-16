class AddInstructionIdToVariations < ActiveRecord::Migration
  def change
    add_column :variations, :instruction_id, :integer
  end
end
