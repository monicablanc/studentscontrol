class AddHabcapToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :habcap, :boolean
  end
end
