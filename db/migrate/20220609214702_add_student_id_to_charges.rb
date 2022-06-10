class AddStudentIdToCharges < ActiveRecord::Migration[6.1]
  def change
    add_reference :charges, :student, null: false, foreign_key: true
  end
end
