class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :ingredients
      t.text :procedure
      t.integer :user

      t.timestamps
    end
  end
end
