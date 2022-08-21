class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name_teacher
      t.integer :grade
      t.string :grupo

      t.timestamps
    end
  end
end
