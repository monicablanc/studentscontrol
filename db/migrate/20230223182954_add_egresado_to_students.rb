class AddEgresadoToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :egresado, :boolean
  end
end
