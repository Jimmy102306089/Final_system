class AddAvrNumberToMarketings < ActiveRecord::Migration
  def change
    add_column :marketings, :avr_number, :integer
  end
end
