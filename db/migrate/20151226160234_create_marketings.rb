class CreateMarketings < ActiveRecord::Migration
  def change
    create_table :marketings do |t|
      t.integer :number
      t.string :name
      t.integer :sales
      t.integer :time

      t.timestamps null: false
    end
  end
end
