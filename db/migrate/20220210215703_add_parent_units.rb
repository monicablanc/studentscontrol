class AddParentUnits < ActiveRecord::Migration[6.1]
  def change
    add_column :units, :parent, :integer, :after => :name_unit
    add_index :units, :parent
  end
end
