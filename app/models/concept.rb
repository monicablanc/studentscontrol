class Concept < ApplicationRecord
  has_many :payments
  has_many :charges
end
