class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :description
      t.datetime :event_date
      t.references :event_type, null: false, foreign_key: true
      t.references :event_status, null: false, foreign_key: true
      t.references :sponsor, null: false, foreign_key: true
      t.decimal :fee
      t.string :category
      t.string :address
      t.string :building_name
      t.string :city
      t.string :zip
      t.references :state, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
