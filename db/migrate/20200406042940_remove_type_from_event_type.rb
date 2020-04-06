class RemoveTypeFromEventType < ActiveRecord::Migration[6.0]
  def change

    remove_column :event_types, :type, :string
  end
end
