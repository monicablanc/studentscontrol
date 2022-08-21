class Teacher < ApplicationRecord
    belongs_to :User
    belongs_to :Subject
    has_many :ratings
end
