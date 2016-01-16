class AddDetalilsToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :name, :string
    add_column :inventories, :sales, :integer
    add_column :inventories, :stock, :integer
  end
end
