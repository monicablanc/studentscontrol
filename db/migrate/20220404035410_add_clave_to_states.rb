class AddClaveToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :Clave, :string, limit: 2
  end
end
