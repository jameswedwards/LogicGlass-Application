class AddCoordinatorPositionToCoordinator < ActiveRecord::Migration[6.0]
  def change
    add_reference :coordinators, :coordinator_position, null: false, foreign_key: true
  end
end
