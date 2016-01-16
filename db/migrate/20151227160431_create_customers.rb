class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :number
      t.integer :name
      t.string :product
      t.string :location

      t.timestamps null: false
    end
  end
end
