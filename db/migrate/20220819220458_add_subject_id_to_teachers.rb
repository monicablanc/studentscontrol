class AddSubjectIdToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_reference :teachers, :subject, null: false, foreign_key: true
  end
end
