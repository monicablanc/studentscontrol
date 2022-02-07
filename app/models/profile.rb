class Profile < ApplicationRecord
  has_many :user_profiles
  has_many :users, through: :user_profiles
  has_many :profile_units
  has_many :units, through: :profile_units
end
