class AddStudentIdToReEntries < ActiveRecord::Migration[6.1]
  def change
    add_reference :re_entries, :student, null: false, foreign_key: true
  end
end
