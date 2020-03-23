class CreateSponsorTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :sponsor_types do |t|
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
