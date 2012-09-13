class AddPublishedAtToPost < ActiveRecord::Migration
  def change
    add_column :recipes, :published_at, :datetime
  end
end
