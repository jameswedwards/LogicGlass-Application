class AddCoordinatorStatusToCoordinator < ActiveRecord::Migration[6.0]
  def change
    add_reference :coordinators, :coordinator_status, null: false, foreign_key: true
  end
end
