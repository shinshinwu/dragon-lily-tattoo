class Customer < ActiveRecord::Base
  # Remember to create a migration!
  has_many :appointments
  has_many :artists, through: :appointments
end
