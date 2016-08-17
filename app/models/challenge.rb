class Challenge < ActiveRecord::Base
  belongs_to :category
  scope :random , -> {limit(10).order("RANDOM()")}

end
