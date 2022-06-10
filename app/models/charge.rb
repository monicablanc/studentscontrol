class Charge < ApplicationRecord
  belongs_to :student
  belongs_to :concept
  has_many :payments
end
