class AddSponsorTypeToSponsorType < ActiveRecord::Migration[6.0]
  def change
    add_column :sponsor_types, :sponsor_type, :string
  end
end
