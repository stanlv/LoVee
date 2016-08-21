class RenameKissesFromCategories < ActiveRecord::Migration
  def change
    rename_column :categories, :Kisses, :kisses
  end
end
