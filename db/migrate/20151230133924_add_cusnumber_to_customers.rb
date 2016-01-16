class AddCusnumberToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :cusname, :string
  end
end
