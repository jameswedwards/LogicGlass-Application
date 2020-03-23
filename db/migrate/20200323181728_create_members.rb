class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.integer :peoplesoft_id
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.date :date_of_birth
      t.string :address
      t.string :city
      t.string :zip
      t.references :state, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.string :home_phone
      t.string :mobile_phone
      t.boolean :payment
      t.references :student_class, null: false, foreign_key: true
      t.string :major

      t.timestamps
    end
  end
end
