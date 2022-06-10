class Receipt < ApplicationRecord
  has_many :payments
  belongs_to :student
end
