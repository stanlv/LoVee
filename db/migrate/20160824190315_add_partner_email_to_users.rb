class AddPartnerEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :partner_email, :string
  end
end
