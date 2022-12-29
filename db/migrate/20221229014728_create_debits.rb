class CreateDebits < ActiveRecord::Migration[6.1]
  def change
    create_table :debits do |t|
      t.integer :grade_debit
      t.decimal :c4, :precision => 16, :scale => 2
      t.decimal :c14, :precision => 16, :scale => 2
      t.decimal :c24, :precision => 16, :scale => 2
      t.decimal :c34, :precision => 16, :scale => 2
      t.decimal :c44, :precision => 16, :scale => 2
      t.decimal :c54, :precision => 16, :scale => 2
      t.decimal :c64, :precision => 16, :scale => 2
      t.decimal :c74, :precision => 16, :scale => 2
      t.decimal :c84, :precision => 16, :scale => 2
      t.decimal :c94, :precision => 16, :scale => 2
      t.decimal :c104, :precision => 16, :scale => 2
      t.decimal :c114, :precision => 16, :scale => 2
      t.decimal :c124, :precision => 16, :scale => 2
      t.decimal :c134, :precision => 16, :scale => 2
      t.decimal :c154, :precision => 16, :scale => 2
      t.decimal :c164, :precision => 16, :scale => 2
      t.decimal :c174, :precision => 16, :scale => 2
      t.decimal :c184, :precision => 16, :scale => 2
      t.decimal :c194, :precision => 16, :scale => 2
      t.decimal :c204, :precision => 16, :scale => 2

      t.timestamps
    end
  end
end
