class RenameBirthdayFromUsers < ActiveRecord::Migration
  def change
    rename_column :users, :Birthday, :birthday
  end
end
