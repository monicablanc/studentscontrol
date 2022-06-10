class AddIndexToReceipts < ActiveRecord::Migration[6.1]
  def change
      add_index :receipts, :folio
  end
end
