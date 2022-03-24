class Generation < ApplicationRecord
  has_many :students
  has_many :re_entries
end
