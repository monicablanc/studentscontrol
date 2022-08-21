class AddStudentIdToRatings < ActiveRecord::Migration[6.1]
  def change
    add_reference :ratings, :student, null: false, foreign_key: true
  end
end
