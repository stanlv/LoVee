class AddKissesToBookings < ActiveRecord::Migration
  def change
     add_column :bookings, :kisses, :integer
  end
end
