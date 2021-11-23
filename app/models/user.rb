class User < ApplicationRecord
  has_one :teacher
  has_one :student
  has_many :bookings, through: :teacher
  has_many :bookings, through: :student

end
