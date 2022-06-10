class Student < ApplicationRecord
  belongs_to :generation
  has_many :re_entries
  has_many :charges
  has_many :receipts
end
