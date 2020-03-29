class RemovePositionFromOfficer < ActiveRecord::Migration[6.0]
  def change

    remove_column :officers, :position, :string
  end
end
