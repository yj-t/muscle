class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer     :post_id
      t.integer     :user_id
      t.integer     :count
      t.integer     :type
      t.timestamps
    end
  end
end
