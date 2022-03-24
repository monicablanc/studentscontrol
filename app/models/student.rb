class Student < ApplicationRecord
  belongs_to :generation
  has_many :re_entries
end
