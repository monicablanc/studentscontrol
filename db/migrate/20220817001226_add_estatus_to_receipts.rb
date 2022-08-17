class AddEstatusToReceipts < ActiveRecord::Migration[6.1]
  def change
    add_column :receipts, :estatus, :string
  end
end
