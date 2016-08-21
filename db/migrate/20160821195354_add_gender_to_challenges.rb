class AddGenderToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :gender, :string
  end
end
