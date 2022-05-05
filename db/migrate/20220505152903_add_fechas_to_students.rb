class AddFechasToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :fecha_certsec, :date
    add_column :students, :fecha_actanac, :date
    add_column :students, :fecha_curp, :date
    add_column :students, :fecha_carta, :date
    add_column :students, :fecha_domicilio, :date
    add_column :students, :fecha_reglamento, :date
  end
end
