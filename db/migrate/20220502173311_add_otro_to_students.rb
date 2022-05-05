class AddOtroToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :otro, :string
  end
end
