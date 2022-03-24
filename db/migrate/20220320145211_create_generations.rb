class CreateGenerations < ActiveRecord::Migration[6.1]
  def change
    create_table :generations do |t|
      t.string :num_gen
      t.datetime :fecha_inicial
      t.datetime :fecha_final
      t.integer :modalidad

      t.timestamps
    end
  end
end
