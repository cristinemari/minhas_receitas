class AddAuthorIdToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :author_id, :string
    add_column :recipes, :integer, :string
  end
end
