class AddDetalilsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :frequency, :integer
  end
end
