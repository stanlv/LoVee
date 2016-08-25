class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :partner, class_name: 'User'
  belongs_to :challenge
  has_one :category, through: :challenge

  validates :status, inclusion: { in: %w(created pending completed failed) } # ['created', 'completed', 'failed']

  scope :new_to_old , -> {order(created_at: :desc)}

end
