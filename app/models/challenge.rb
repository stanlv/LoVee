class Challenge < ActiveRecord::Base
  belongs_to :category

  has_many :bookings
  has_many :users, through: :bookings

  scope :random , -> {limit(3).order("RANDOM()")}

end
