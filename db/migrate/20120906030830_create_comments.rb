class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :email
      t.string :url
      t.text :body
      t.references :recipe

      t.timestamps
    end
  end
end
