class AddCoordinatorStatusToCoordinator < ActiveRecord::Migration[6.0]
  def change
    add_reference :coordinators, :coordinator_status, null: true, foreign_key: true
  end
end
