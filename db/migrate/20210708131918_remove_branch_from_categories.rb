class RemoveBranchFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :branch, :string
  end
end
