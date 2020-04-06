class AddStudentClassToStudentClass < ActiveRecord::Migration[6.0]
  def change
    add_column :student_classes, :student_class, :string
  end
end
