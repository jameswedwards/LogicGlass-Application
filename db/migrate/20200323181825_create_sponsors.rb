class CreateSponsors < ActiveRecord::Migration[6.0]
  def change
    create_table :sponsors do |t|
      t.string :first_name
      t.string :last_name
      t.string :home_phone
      t.string :mobile_phone
      t.references :sponsor_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
