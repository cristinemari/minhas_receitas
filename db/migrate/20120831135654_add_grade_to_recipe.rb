class AddGradeToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :grade, :integer
  end
end
