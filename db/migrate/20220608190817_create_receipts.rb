class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.integer :folio
      t.string :name_receipt
      t.string :grade_concept
      t.string :grupo

      t.timestamps
    end
  end
end
