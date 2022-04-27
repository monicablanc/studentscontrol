class AddReglamentoToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :reglamento, :boolean
  end
end
