class CreateCoordinatorPositions < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinator_positions do |t|
      t.string :position
      t.string :description

      t.timestamps
    end
  end
end
