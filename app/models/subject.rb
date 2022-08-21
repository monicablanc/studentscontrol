class Subject < ApplicationRecord
  has_many :teachers
  has_many :ratings
end
