class RemoveName2FromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :text, :text
    remove_column :posts, :image, :text
    add_column :posts, :title, :string
  end
end
