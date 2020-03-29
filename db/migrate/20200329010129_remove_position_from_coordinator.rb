class RemovePositionFromCoordinator < ActiveRecord::Migration[6.0]
  def change

    remove_column :coordinators, :position, :string
  end
end
