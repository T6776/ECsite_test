class DropTableArticles < ActiveRecord::Migration[5.2]
  def change
    drop_table :items
    drop_table :cart_items
  end
end
