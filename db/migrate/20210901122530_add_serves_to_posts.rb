class AddServesToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :serves, :integer
  end
end
