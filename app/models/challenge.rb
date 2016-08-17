class Challenge < ActiveRecord::Base
  belongs_to :category
  validates :content, uniqueness:true
end
