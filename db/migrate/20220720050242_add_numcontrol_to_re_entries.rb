class AddNumcontrolToReEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :re_entries, :num_control, :integer
    add_column :re_entries, :grado, :integer
    add_column :re_entries, :grupo, :string
  end
end
