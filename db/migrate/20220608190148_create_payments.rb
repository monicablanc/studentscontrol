class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :name_concept
      t.string :grade_concept
      t.decimal :monto, :precision => 16, :scale => 2
      t.timestamps
    end
  end
end
