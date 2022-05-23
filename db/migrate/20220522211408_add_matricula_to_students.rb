class AddMatriculaToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :matricula, :string
  end
end
