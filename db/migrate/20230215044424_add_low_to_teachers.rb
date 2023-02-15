class AddLowToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :low, :boolean
  end
end
