class AdjustRecipe < ActiveRecord::Migration
  def up
  	remove_column :recipes, :author_id
  	remove_column :recipes, :integer
  	add_column :recipes, :author_id, :integer
  end

  def down
  end
end
