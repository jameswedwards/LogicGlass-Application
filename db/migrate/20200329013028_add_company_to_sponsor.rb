class AddCompanyToSponsor < ActiveRecord::Migration[6.0]
  def change
    add_column :sponsors, :company, :string
  end
end
