class AddUserReferenceToPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :user
  end
end
