class AddInventoryToProducts < ActiveRecord::Migration
  def change
    add_column :products, :integer, :string
  end
end
