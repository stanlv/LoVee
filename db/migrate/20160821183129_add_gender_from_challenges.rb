class AddGenderFromChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :Gender, :string
  end
end
