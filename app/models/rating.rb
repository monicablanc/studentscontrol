class Rating < ApplicationRecord
  belongs_to :Student
  belongs_to :Subject
  belongs_to :Teacher
end
