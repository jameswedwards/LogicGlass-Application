class CreateCoordinatorStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinator_statuses do |t|
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
