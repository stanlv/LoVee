class AddKissesFromCategories < ActiveRecord::Migration
  def change
    add_column :categories, :kisses, :integer
  end
end
