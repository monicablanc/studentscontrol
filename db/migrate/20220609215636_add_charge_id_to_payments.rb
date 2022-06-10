class AddChargeIdToPayments < ActiveRecord::Migration[6.1]
  def change
    add_reference :payments, :charge, null: false, foreign_key: true
  end
end
