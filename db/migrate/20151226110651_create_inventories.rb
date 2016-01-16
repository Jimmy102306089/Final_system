class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :number
      t.string :location
      t.string :condition


      t.timestamps null: false
    end
  end
end
