class AddReinscritoToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :reinscrito, :boolean
  end
end
