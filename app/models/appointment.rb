class Appointment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :artist
  belongs_to :customer
end
