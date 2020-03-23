class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.references :country, null: false, foreign_key: true
      t.string :name
      t.string :state_abbreviation

      t.timestamps
    end
  end
end
