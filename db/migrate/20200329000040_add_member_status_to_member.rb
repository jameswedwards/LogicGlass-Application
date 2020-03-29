class AddMemberStatusToMember < ActiveRecord::Migration[6.0]
  def change
    add_reference :members, :member_status, null: false, foreign_key: true
  end
end
