class AddConceptIdToPayments < ActiveRecord::Migration[6.1]
  def change
    add_reference :payments, :concept, null: false, foreign_key: true
  end
end
