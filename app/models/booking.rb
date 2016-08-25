class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  has_one :category, through: :challenge

end
