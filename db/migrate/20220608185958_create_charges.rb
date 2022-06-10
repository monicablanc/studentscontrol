class CreateCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :charges do |t|
      t.string :name_concept
      t.string :grade_concept
      t.integer :cantidad
      t.decimal :cost, :precision => 16, :scale => 2
      t.decimal :saldo, :precision => 16, :scale => 2

      t.timestamps
    end
  end
end
