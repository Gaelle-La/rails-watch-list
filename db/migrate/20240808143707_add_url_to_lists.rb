class AddUrlToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :url, :text
  end
end
