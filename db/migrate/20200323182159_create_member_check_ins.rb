class CreateMemberCheckIns < ActiveRecord::Migration[6.0]
  def change
    create_table :member_check_ins do |t|
      t.references :member, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.datetime :check_in_date

      t.timestamps
    end
  end
end
