class AddModalidadToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :modalidad, :integer
  end
end
