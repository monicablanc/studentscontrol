class Payment < ApplicationRecord
  belongs_to :receipts
  belongs_to :Charge
  belongs_to :concept
  
end
