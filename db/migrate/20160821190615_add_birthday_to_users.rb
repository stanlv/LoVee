class AddBirthdayToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Birthday, :date
  end
end
