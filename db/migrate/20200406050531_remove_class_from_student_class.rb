class RemoveClassFromStudentClass < ActiveRecord::Migration[6.0]
  def change

    remove_column :student_classes, :class, :string
  end
end
