class AddCoinsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :coins, :integer
  end
end
