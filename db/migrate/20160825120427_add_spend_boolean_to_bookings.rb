class AddSpendBooleanToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :spend, :boolean
  end
end
