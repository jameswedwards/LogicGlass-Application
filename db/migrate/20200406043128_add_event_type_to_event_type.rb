class AddEventTypeToEventType < ActiveRecord::Migration[6.0]
  def change
    add_column :event_types, :event_type, :string
  end
end
