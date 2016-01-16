class AddDetalilsToMarketings < ActiveRecord::Migration
  def change
    add_column :marketings, :suggestion, :string
  end
end
