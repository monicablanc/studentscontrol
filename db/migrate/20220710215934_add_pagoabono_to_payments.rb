class AddPagoabonoToPayments < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :pago_abono, :string
  end
end
