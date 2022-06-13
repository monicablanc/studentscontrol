class AddObservacionesToCharges < ActiveRecord::Migration[6.1]
  def change
    add_column :charges, :observaciones, :string
  end
end
