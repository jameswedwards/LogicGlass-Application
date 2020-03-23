class CreateStudentClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :student_classes do |t|
      t.string :class
      t.string :description

      t.timestamps
    end
  end
end
