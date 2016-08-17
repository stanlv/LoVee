class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      t.integer :deadline
      t.integer :coins
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
