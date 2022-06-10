class AddReceiptIdToPayments < ActiveRecord::Migration[6.1]
  def change
    add_reference :payments, :receipt, null: false, foreign_key: true
  end
end
