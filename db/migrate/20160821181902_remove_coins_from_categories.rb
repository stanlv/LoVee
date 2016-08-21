class RemoveCoinsFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :coins, :integer
  end
end
