class CreateOfficerPositions < ActiveRecord::Migration[6.0]
  def change
    create_table :officer_positions do |t|
      t.string :position
      t.string :description

      t.timestamps
    end
  end
end
