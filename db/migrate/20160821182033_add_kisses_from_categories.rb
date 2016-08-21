class AddKissesFromCategories < ActiveRecord::Migration
  def change
    add_column :categories, :Kisses, :integer
  end
end
