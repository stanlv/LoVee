class RemoveCoinsFromChallenges < ActiveRecord::Migration
  def change
    change_table :challenges do |t|
      t.remove :coins
    end

  end
end
