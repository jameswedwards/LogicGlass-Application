class RemoveTypeFromSponsorType < ActiveRecord::Migration[6.0]
  def change

    remove_column :sponsor_types, :type, :string
  end
end
