class AddOfficerStatusToOfficer < ActiveRecord::Migration[6.0]
  def change
    add_reference :officers, :officer_status, null: true, foreign_key: true
  end
end
