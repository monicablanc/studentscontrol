class Addapellidostostudents < ActiveRecord::Migration[6.1]
  def change
      add_column :students, :last_name1, :string
      add_column :students, :last_name2, :string
  end
end
