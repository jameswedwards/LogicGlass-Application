class AddOfficerPositionToOfficer < ActiveRecord::Migration[6.0]
  def change
    add_reference :officers, :officer_position, null: true, foreign_key: true
  end
end
