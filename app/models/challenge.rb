class Challenge < ActiveRecord::Base
  belongs_to :category
  scope :random , -> {limit(5).order("RANDOM()")}

end
