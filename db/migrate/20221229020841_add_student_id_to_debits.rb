class AddStudentIdToDebits < ActiveRecord::Migration[6.1]
  def change
    add_reference :debits, :student, null: false, foreign_key: true
  end
end
