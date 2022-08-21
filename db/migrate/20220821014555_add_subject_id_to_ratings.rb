class AddSubjectIdToRatings < ActiveRecord::Migration[6.1]
  def change
    add_reference :ratings, :subject, null: false, foreign_key: true
  end
end
