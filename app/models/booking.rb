class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  has_one :category, through: :challenge

  validates :status, inclusion: { in: %w(created completed failed) } # ['created', 'completed', 'failed']


end
