class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :grade
      t.string :grupo
      t.integer :eval1
      t.integer :eval2
      t.integer :eval3
      t.decimal :puntaje
      t.decimal :promedio
      t.integer :extr1
      t.integer :extr2
      t.integer :extr3
      t.boolean :egresado

      t.timestamps
    end
  end
end
