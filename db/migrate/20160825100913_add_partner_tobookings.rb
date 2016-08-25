class AddPartnerTobookings < ActiveRecord::Migration
  def change
    add_column :bookings, :partner_id, :integer
  end
end
