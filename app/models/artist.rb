class Artist < ActiveRecord::Base
  # Remember to create a migration!
  has_many :appointments
  has_many :customers, through: :appointments

end
