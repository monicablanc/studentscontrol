class Unit < ApplicationRecord
  has_many :profile_units
  has_many :profiles, through: :profile_units

end
